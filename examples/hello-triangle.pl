#!/usr/bin/env perl

# Hello Triangle, adapted from webkit:
# https://webkit.org/demos/webgpu/scripts/hello-triangle.js

use v5.30;
use Data::Dumper;
use Time::HiRes qw/time/;
use WebGPU::Direct qw/:all/;

my $wgpu = WebGPU::Direct->new;

my $width  = 600;
my $height = 600;

my $gpuContext = $wgpu->CreateSurface(
  {
    nextInChain => WebGPU::Direct->new_window_x11( $width, $height ),
  }
);

my $adapter = $wgpu->RequestAdapter({ compatibleSurface => $gpuContext });
my $device  = $adapter->RequestDevice;

#*** Vertex Buffer Setup ***

my $vertexStride   = 8 * 4;
my $vertexDataSize = $vertexStride * 3;

# GPUBufferDescriptor
my $vertexDataBufferDescriptor = {
  size  => $vertexDataSize,
  usage => BufferUsage->Vertex,
};

# GPUBuffer
my $vertexBuffer = $device->CreateBuffer($vertexDataBufferDescriptor);

#*** Shader Setup ***
my $wgslSource   = join( '', <DATA> );
my $shaderModule = $device->CreateShaderModule( { code => $wgslSource } );

# GPUPipelineStageDescriptors
my $vertexStageDescriptor = { module => $shaderModule, entryPoint => 'vsmain' };

my $fragmentStageDescriptor = {
  module     => $shaderModule,
  entryPoint => "fsmain",
  targets    => { format => TextureFormat->BGRA8Unorm, },
};

# GPURenderPipelineDescriptor

my $renderPipelineDescriptor = {
  layout    => $device->CreatePipelineLayout( {} ),
  vertex    => $vertexStageDescriptor,
  fragment  => $fragmentStageDescriptor,
  primitive => { topology => PrimitiveTopology->TriangleList },
};

# GPURenderPipeline
my $renderPipeline = $device->CreateRenderPipeline($renderPipelineDescriptor);

#*** Swap Chain Setup ***



# GPUCanvasConfiguration
my $canvasConfiguration = {
  width  => $width,
  height => $height,
  device => $device,
  format => TextureFormat->BGRA8Unorm,
};
$gpuContext->Configure($canvasConfiguration);

# GPUTexture
# This is done in the render loop
my $currentTexture;    # = $gpuContext->GetCurrentTexture;

#*** Render Pass Setup ***

# Acquire Texture To Render To

# GPUTextureView
# This is done in the render loop
my $renderAttachment;    # = $currentTexture->texture->CreateView;

# GPUColor
my $darkBlue = { r => 0.15, g => 0.15, b => 0.5, a => 1 };

# GPURenderPassColorATtachmentDescriptor
my $colorAttachmentDescriptor = {
  view       => $renderAttachment,
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
  my $renderPassDescriptor = { colorAttachments => [$colorAttachmentDescriptor] };

  # GPUCommandEncoder
  my $commandEncoder = $device->CreateCommandEncoder;

  # GPURenderPassEncoder
  $currentTexture = $gpuContext->GetCurrentTexture;
  $colorAttachmentDescriptor->{view} = $currentTexture->texture->CreateView;
  my $renderPassEncoder = $commandEncoder->BeginRenderPass($renderPassDescriptor);

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
  $gpuContext->Present;
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
