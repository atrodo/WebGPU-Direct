#!/usr/bin/env perl

# Triangle Example, adapted from wgpu-native:
# https://github.com/gfx-rs/wgpu-native/blob/trunk/examples/triangle/main.c

use v5.30;
use Data::Dumper;
use Time::HiRes qw/time/;
use WebGPU::Direct qw/:all/;

my $wgpu = WebGPU::Direct->new;

# Create instance
my $instance = $wgpu->CreateInstance( $wgpu->InstanceDescriptor->new );

# Build X11 Surface
my $x11        = WebGPU::Direct->new_window_x11;
my $descriptor = $wgpu->SurfaceDescriptor->new( nextInChain => $x11 );

# Build surface
my $surface = $instance->CreateSurface($descriptor);

# Acquire an adapter and device
my $ra_opt = $wgpu->RequestAdapterOptions->new( compatibleSurface => $surface );

my $adapter;
my $device;

sub handle_request_adapter
{
  my $status = shift;
  $adapter = shift;
  my $msg  = shift;
  my $data = shift;

  if ( $status == RequestAdapterStatus->Success )
  {
    $data->{adapter} = $adapter;
  }
  else
  {
    warn
        sprintf( "request_adapter status=%#.8x message=%s\n", $status, $msg );
  }
}

sub handle_request_device
{
  my $status = shift;
  $device = shift;
  my $msg  = shift;
  my $data = shift;

  if ( $status == RequestDeviceStatus->Success )
  {
    $data->{device} = $device;
  }
  else
  {
    warn sprintf( "request_device status=%#.8x message=%s\n", $status, $msg );
  }
}

$instance->RequestAdapter( $ra_opt, \&handle_request_adapter, {} );
my $supported_limits = $wgpu->SupportedLimits->new;

$adapter->GetLimits($supported_limits);
my $limits = $supported_limits->limits;

my $req_limits = $wgpu->RequiredLimits->new( { limits => $limits } );
my $devdesc    = $wgpu->DeviceDescriptor->new( requiredLimits => $req_limits );
$adapter->RequestDevice( $devdesc, \&handle_request_device, {} );

# Build the shader
my $shaderdesc = $wgpu->ShaderModuleDescriptor->new(
  {
    label       => 'shader.wsgl',
    nextInChain => $wgpu->ShaderModuleWGSLDescriptor->new(
      {
        sType => SType->ShaderModuleWGSLDescriptor,
        code  => join( '', <DATA> ),
      }
    ),
  }
);

my $shader = $device->CreateShaderModule($shaderdesc);

# Build the pipeline pieces
my $queue   = $device->GetQueue;
my $pl_desc = $wgpu->PipelineLayoutDescriptor->new( label => 'pipeline_layout' );
my $pipeline_layout = $device->CreatePipelineLayout($pl_desc);
my $tex_fmt         = $surface->GetPreferredFormat($adapter);

my $rpd = $wgpu->RenderPipelineDescriptor->new(
  label  => 'render_pipeline',
  layout => $pipeline_layout,
  vertex => $wgpu->VertexState->new(
    module     => $shader,
    entryPoint => 'vs_main',
  ),
  fragment => $wgpu->FragmentState->new(
    module      => $shader,
    entryPoint  => 'fs_main',
    targetCount => 1,
    targets     => $wgpu->ColorTargetState->new(
      format    => $tex_fmt,
      writeMask => ColorWriteMask->All,
    ),
  ),
  primitive => $wgpu->PrimitiveState->new(
    topology => PrimitiveTopology->TriangleList,
  ),
  multisample => $wgpu->MultisampleState->new(
    count => 1,
    mask  => 0xFFFFFFFF,
  ),
);

my $pipeline = $device->CreateRenderPipeline($rpd);

my $sc_config = $wgpu->SwapChainDescriptor->new(
  usage       => TextureUsage->RenderAttachment,
  format      => $tex_fmt,
  presentMode => PresentMode->Fifo,
  width       => 640,
  height      => 360,
);

my $swapchain = $device->CreateSwapChain( $surface, $sc_config );

my $passcolor = $wgpu->RenderPassColorAttachment->new(
  loadOp     => LoadOp->Clear,
  storeOp    => StoreOp->Store,
  clearValue => $wgpu->Color->new(
    r => 0.0,
    g => 1.0,
    b => 0.0,
    a => 1.0,
  ),
);

my $passdesc = $wgpu->RenderPassDescriptor->new(
  label                => "render_pass_encoder",
  colorAttachmentCount => 1,
  colorAttachments     => $passcolor,
);

my $cwdesc = $wgpu->CommandEncoderDescriptor->new;
my $cbdesc = $wgpu->CommandBufferDescriptor->new;

my $start  = time;
my $frames = 1000;
for ( 1 .. 1000 )
{
  my $next_tex = $swapchain->GetCurrentTextureView;

  my $cmdenc = $device->CreateCommandEncoder($cwdesc);

  $passcolor->view($next_tex);
  my $passenc = $cmdenc->BeginRenderPass($passdesc);

  $passenc->SetPipeline($pipeline);
  $passenc->Draw( 3, 1, 0, 0 );
  $passenc->End;

  my $cmdbuf = $cmdenc->Finish($cbdesc);

  $queue->Submit( [$cmdbuf] );
  $swapchain->Present;

  #$cmdbuf->Release;
  #$passenc->Release;
  #$cmdenc->Release;
  #$next_tex->Release;
}

my $total = time - $start;
warn "Took $total Seconds for $frames frames:\n";
warn "  FPS: " . ( $frames / $total ) . "\n";

__DATA__
@vertex
fn vs_main(@builtin(vertex_index) in_vertex_index: u32) -> @builtin(position) vec4<f32> {
    let x = f32(i32(in_vertex_index) - 1);
    let y = f32(i32(in_vertex_index & 1u) * 2 - 1);
    return vec4<f32>(x, y, 0.0, 1.0);
}

@fragment
fn fs_main() -> @location(0) vec4<f32> {
    return vec4<f32>(1.0, 0.0, 0.0, 1.0);
}
