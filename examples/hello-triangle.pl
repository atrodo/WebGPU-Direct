#!/usr/bin/env perl

use v5.30;
use Data::Dumper;
use Time::HiRes qw/time/;
use WebGPU::Direct qw/:all/;

my $wgpu = WebGPU::Direct->new;

my $adapter = $wgpu->RequestAdapter;
my $device  = $adapter->RequestDevice;

#*** Vertex Buffer Setup ***

my $vertexStride   = 8 * 4;
my $vertexDataSize = $vertexStride * 3;

warn;

# GPUBufferDescriptor
my $vertexDataBufferDescriptor = {
  size  => $vertexDataSize,
  usage => BufferUsage->Vertex,
};

warn;

# GPUBuffer
my $vertexBuffer = $device->CreateBuffer($vertexDataBufferDescriptor);

warn;

#*** Shader Setup ***
my $wgslSource   = join( '', <DATA> );
my $shaderModule = $device->CreateShaderModule( { code => $wgslSource } );

warn;

# GPUPipelineStageDescriptors
my $vertexStageDescriptor
    = { module => $shaderModule, entryPoint => 'vsmain' };

warn;
my $fragmentStageDescriptor = {
  module     => $shaderModule,
  entryPoint => "fsmain",
  targets => { format => TextureFormat->BGRA8Unorm, },
};

# GPURenderPipelineDescriptor
warn;

my $renderPipelineDescriptor = {
  layout    => $device->CreatePipelineLayout( {} ),
  vertex    => $vertexStageDescriptor,
  fragment  => $fragmentStageDescriptor,
  primitive => { topology => PrimitiveTopology->TriangleList },
};

# GPURenderPipeline
my $renderPipeline = $device->CreateRenderPipeline($renderPipelineDescriptor);

#*** Swap Chain Setup ***

my $width  = 600;
my $height = 600;

my $surface = $wgpu->CreateSurface(
  {
    nextInChain => WebGPU::Direct->new_window_x11( $width, $height ),
  }
);

# GPUCanvasConfiguration
# GPUTexture
my $swapChain = $device->CreateSwapChain(
  $surface,
  {
    usage       => TextureUsage->RenderAttachment,
    format      => TextureFormat->BGRA8Unorm,
    presentMode => PresentMode->Fifo,
    width       => $width,
    height      => $height,
  }
);

#*** Render Pass Setup ***

# Acquire Texture To Render To

# GPUTextureView
# This is done in the render loop
#my $renderAttachment = $swapChain->GetCurrentTextureView;

# GPUColor
my $darkBlue = { r => 0.15, g => 0.15, b => 0.5, a => 1 };

# GPURenderPassColorATtachmentDescriptor
my $colorAttachmentDescriptor = {
  #view       => $renderAttachment,
  loadOp     => LoadOp->Clear,
  storeOp    => StoreOp->Store,
  clearColor => $darkBlue,
};

#*** Rendering ***

my $start  = time;
my $frames = 1000;
for ( 1 .. 1000 )
{
  # GPURenderPassDescriptor
  my $renderPassDescriptor
      = { colorAttachments => [$colorAttachmentDescriptor] };

  # GPUCommandEncoder
  my $commandEncoder = $device->CreateCommandEncoder;

  # GPURenderPassEncoder
  $colorAttachmentDescriptor->{view} = $swapChain->GetCurrentTextureView;
  my $renderPassEncoder
      = $commandEncoder->BeginRenderPass($renderPassDescriptor);

  $renderPassEncoder->SetPipeline($renderPipeline);
  my $vertexBufferSlot = 0;
  $renderPassEncoder->SetVertexBuffer( $vertexBufferSlot, $vertexBuffer );
  $renderPassEncoder->Draw( 3, 1, 0, 0 );    # 3 vertices, 1 instance, 0th vertex, 0th instance.
  $renderPassEncoder->End;

  # GPUComamndBuffer
  my $commandBuffer = $commandEncoder->Finish;

  # GPUQueue
  my $queue = $device->GetQueue;
  $queue->Submit( [$commandBuffer] );
  $swapChain->Present;
}

my $total = time - $start;
warn "Took $total Seconds for $frames frames:\n";
warn "  FPS: " . ( $frames / $total ) . "\n";

__DATA__
struct Vertex {
    @builtin(position) Position: vec4<f32>,
    @location(0) color: vec4<f32>,
}

@vertex fn vsmain(@builtin(vertex_index) VertexIndex: u32) -> Vertex
{
    var pos: array<vec2<f32>, 3> = array<vec2<f32>, 3>(
        vec2<f32>( 0.0,  0.5),
        vec2<f32>(-0.5, -0.5),
        vec2<f32>( 0.5, -0.5)
    );
    var vertex_out : Vertex;
    vertex_out.Position = vec4<f32>(pos[VertexIndex], 0.0, 1.0);
    vertex_out.color = vec4<f32>(pos[VertexIndex] + vec2<f32>(0.5, 0.5), 0.0, 1.0);
    return vertex_out;
}

@fragment fn fsmain(in: Vertex) -> @location(0) vec4<f32>
{
    return in.color;
}
