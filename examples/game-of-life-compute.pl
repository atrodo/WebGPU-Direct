#!/usr/bin/env perl

# Game of Life, adapted from WebGPU sample:
# https://webgpu.github.io/webgpu-samples/?sample=gameOfLife#main.ts

use v5.30;
use Data::Dumper;
use Time::HiRes qw/time/;
use WebGPU::Direct qw/:all/;

my $wgpu = WebGPU::Direct->new;

my $width  = 600;
my $height = 600;

my $wgsl = do { local $/; <DATA> };
my ( $computeWGSL, $vertWGSL, $fragWGSL ) = split /^---\n/xms, $wgsl;

my $context = $wgpu->CreateSurface(
  {
    nextInChain => WebGPU::Direct->new_window( $width, $height ),
  }
);

my $adapter = $wgpu->RequestAdapter( { compatibleSurface => $context } );
my $device  = $adapter->RequestDevice;

my $presentationFormat = $context->GetPreferredFormat($adapter);

$context->Configure(
  {
    device => $device,
    format => $presentationFormat,
    width  => $width,
    height => $height,
  }
);

my $GameOptions = {
  width         => 128,
  height        => 128,
  timestep      => 1,
  workgroupSize => 8,
};

my $computeShader = $device->CreateShaderModule( { code => $computeWGSL } );

my $a = {
  entries => [
    {
      binding    => 0,
      visibility => ShaderStage->Compute,
      buffer     => {
        type => 'ReadOnlyStorage',
      },
    },
    {
      binding    => 1,
      visibility => ShaderStage->Compute,
      buffer     => {
        type => 'ReadOnlyStorage',
      },
    },
    {
      binding    => 2,
      visibility => ShaderStage->Compute,
      buffer     => {
        type => 'Storage',
      },
    },
  ],
};

my $bindGroupLayoutCompute = $device->CreateBindGroupLayout($a);

my @squareVertices = ( 0, 0, 0, 1, 1, 0, 1, 1 );
my $squareVertices = pack( 'L*', @squareVertices );
my $squareBuffer   = $device->CreateBuffer(
  {
    size             => length($squareVertices),
    usage            => BufferUsage->Vertex,
    mappedAtCreation => 1,
  }
);

$squareBuffer->GetMappedRange->buffer($squareVertices);
$squareBuffer->Unmap();

my $squareStride = {
  arrayStride => 2 * length( pack 'L', 0 ),
  stepMode    => 'Vertex',
  attributes  => [
    {
      shaderLocation => 1,
      offset         => 0,
      format         => 'Uint32x2',
    },
  ],
};

my $vertexShader   = $device->CreateShaderModule( { code => $vertWGSL } );
my $fragmentShader = $device->CreateShaderModule( { code => $fragWGSL } );
my $commandEncoder;

my $bindGroupLayoutRender = $device->CreateBindGroupLayout(
  {
    entries => [
      {
        binding    => 0,
        visibility => ShaderStage->Vertex,
        buffer     => {
          type => 'Uniform',
        },
      },
    ],
  }
);

my $cellsStride = {
  arrayStride => length( pack 'L', 0 ),
  stepMode    => 'Instance',
  attributes  => [
    {
      shaderLocation => 0,
      offset         => 0,
      format         => 'Uint32',
    },
  ],
};

my $wholeTime = 0;
my $loopTimes = 0;
my $buffer0;
my $buffer1;
my $render = sub { };

sub resetGameData
{
  # compute pipeline
  my $computePipeline = $device->CreateComputePipeline(
    {
      layout => $device->CreatePipelineLayout(
        {
          bindGroupLayouts => [$bindGroupLayoutCompute],
        }
      ),
      compute => {
        module     => $computeShader,
        entryPoint => 'main',
        constants  => {
          blockSize => $GameOptions->{workgroupSize},
        },
      },
    }
  );
  my $sizeBuffer = $device->CreateBuffer(
    {
      size             => 2 * length( pack 'L', 0 ),
      usage            => BufferUsage->Storage | BufferUsage->Uniform | BufferUsage->CopyDst | BufferUsage->Vertex,
      mappedAtCreation => 1,
    }
  );

  my $squareVertices = pack( 'L*', @squareVertices );
  $sizeBuffer->GetMappedRange->buffer(
    pack(
      'L*',
      $GameOptions->{width},
      $GameOptions->{height},
    )
  );
  $sizeBuffer->Unmap();

  my $cell_length = $GameOptions->{width} * $GameOptions->{height};
  my @cells       = ( map { rand() < 0.25 ? 1 : 0 } 1 .. $cell_length );
  my $cells       = pack 'L*', @cells;

  $buffer0 = $device->CreateBuffer(
    {
      size             => length $cells,
      usage            => BufferUsage->Storage | BufferUsage->Vertex,
      mappedAtCreation => 1,
    }
  );

  $buffer0->GetMappedRange->buffer($cells);
  $buffer0->Unmap();

  $buffer1 = $device->CreateBuffer(
    {
      size  => length $cells,
      usage => BufferUsage->Storage | BufferUsage->Vertex,
    }
  );

  my $bindGroup0 = $device->CreateBindGroup(
    {
      layout  => $bindGroupLayoutCompute,
      entries => [
        { binding => 0, buffer => $sizeBuffer },
        { binding => 1, buffer => $buffer0 },
        { binding => 2, buffer => $buffer1 },
      ],
    }
  );

  my $bindGroup1 = $device->CreateBindGroup(
    {
      layout  => $bindGroupLayoutCompute,
      entries => [
        { binding => 0, buffer => $sizeBuffer },
        { binding => 1, buffer => $buffer1 },
        { binding => 2, buffer => $buffer0 },
      ],
    }
  );

  my $renderPipeline = $device->CreateRenderPipeline(
    {
      layout => $device->CreatePipelineLayout(
        {
          bindGroupLayouts => [$bindGroupLayoutRender],
        }
      ),
      primitive => {
        topology => 'TriangleStrip',
      },
      vertex => {
        module     => $vertexShader,
        entryPoint => 'main',
        buffers    => [ $cellsStride, $squareStride ],
      },
      fragment => {
        module     => $fragmentShader,
        entryPoint => 'main',
        targets    => [
          {
            format => $presentationFormat,
          },
        ],
      },
    }
  );

  my $uniformBindGroup = $device->CreateBindGroup(
    {
      layout  => $renderPipeline->GetBindGroupLayout(0),
      entries => [
        {
          binding => 0,
          buffer  => $sizeBuffer,
          offset  => 0,
          size    => 2 * length( pack 'L', 0 ),
        },
      ],
    }
  );

  $loopTimes = 0;
  $render    = sub
  {
    my $currentTexture = $context->GetCurrentTexture;
    my $view           = $currentTexture->texture->CreateView();
    my $renderPass     = {
      colorAttachments => [
        {
          view       => $view,
          loadOp     => 'Clear',
          storeOp    => 'Store',
          clearColor => { r => 0.15, g => 0.15, b => 0.5, a => 1 },
        },
      ],
    };
    $commandEncoder = $device->CreateCommandEncoder();

    # compute
    my $passEncoderCompute = $commandEncoder->BeginComputePass();
    $passEncoderCompute->SetPipeline($computePipeline);
    $passEncoderCompute->SetBindGroup( 0, $loopTimes ? $bindGroup1 : $bindGroup0 );
    $passEncoderCompute->DispatchWorkgroups(
      $GameOptions->{width} / $GameOptions->{workgroupSize},
      $GameOptions->{height} / $GameOptions->{workgroupSize}
    );
    $passEncoderCompute->End();

    # render
    my $passEncoderRender = $commandEncoder->BeginRenderPass($renderPass);
    $passEncoderRender->SetPipeline($renderPipeline);
    $passEncoderRender->SetVertexBuffer( 0, $loopTimes ? $buffer1 : $buffer0 );
    $passEncoderRender->SetVertexBuffer( 1, $squareBuffer );
    $passEncoderRender->SetBindGroup( 0, $uniformBindGroup, [] );
    $passEncoderRender->Draw( 4, $cell_length );
    $passEncoderRender->End();

    $device->GetQueue->Submit( [ $commandEncoder->Finish() ] );
    $context->Present;
  };
}

resetGameData();

my $start  = time;
my $frames = 1000;
for ( 1 .. $frames )
{
  if ( $GameOptions->{timestep} )
  {
    $wholeTime++;
    if ( $wholeTime >= $GameOptions->{timestep} )
    {
      $render->();
      $wholeTime -= $GameOptions->{timestep};
      $loopTimes = 1 - $loopTimes;
    }
  }
}

my $total = time - $start;
warn "Took $total Seconds for $frames frames:\n";
warn "  FPS: " . ( $frames / $total ) . "\n";

__DATA__
@binding(0) @group(0) var<storage, read> size: vec2u;
@binding(1) @group(0) var<storage, read> current: array<u32>;
@binding(2) @group(0) var<storage, read_write> next: array<u32>;

const blockSize = 8;

fn getIndex(x: u32, y: u32) -> u32 {
  let h = size.y;
  let w = size.x;

  return (y % h) * w + (x % w);
}

fn getCell(x: u32, y: u32) -> u32 {
  return current[getIndex(x, y)];
}

fn countNeighbors(x: u32, y: u32) -> u32 {
  return getCell(x - 1, y - 1) + getCell(x, y - 1) + getCell(x + 1, y - 1) +
         getCell(x - 1, y) +                         getCell(x + 1, y) +
         getCell(x - 1, y + 1) + getCell(x, y + 1) + getCell(x + 1, y + 1);
}

@compute @workgroup_size(blockSize, blockSize)
fn main(@builtin(global_invocation_id) grid: vec3u) {
  let x = grid.x;
  let y = grid.y;
  let n = countNeighbors(x, y);
  next[getIndex(x, y)] = select(u32(n == 3u), u32(n == 2u || n == 3u), getCell(x, y) == 1u);
}

---

struct Out {
  @builtin(position) pos: vec4f,
  @location(0) cell: f32,
}

@binding(0) @group(0) var<uniform> size: vec2u;

@vertex
fn main(@builtin(instance_index) i: u32, @location(0) cell: u32, @location(1) pos: vec2u) -> Out {
  let w = size.x;
  let h = size.y;
  let x = (f32(i % w + pos.x) / f32(w) - 0.5) * 2. * f32(w) / f32(max(w, h));
  let y = (f32((i - (i % w)) / w + pos.y) / f32(h) - 0.5) * 2. * f32(h) / f32(max(w, h));

  return Out(vec4f(x, y, 0., 1.), f32(cell));
}

---

@fragment
fn main(@location(0) cell: f32) -> @location(0) vec4f {
  return vec4f(cell, cell, cell, 1.);
}

