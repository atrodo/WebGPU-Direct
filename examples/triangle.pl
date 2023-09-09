#!/usr/bin/env perl

use v5.30;
use Data::Dumper;
use Time::HiRes qw/time/;
use WebGPU::Direct;
use WebGPU::Direct::XS;

# Create instance
my $id       = WebGPU::Direct::InstanceDescriptor->new;
my $instance = WebGPU::Direct::XS::CreateInstance($id);

# Build X11 Surface
my $x11 = WebGPU::Direct->new_window_x11;
my $descriptor
    = WebGPU::Direct::SurfaceDescriptor->new( nextInChain => $x11 );

# Build surface
my $surface = $instance->CreateSurface($descriptor);

# Acquire an adapter and device
my $ra_opt = WebGPU::Direct::RequestAdapterOptions->new(
  compatibleSurface => $surface );

my $adapter;
my $device;

sub handle_request_adapter
{
  my $status = shift;
  $adapter = shift;
  my $msg  = shift;
  my $data = shift;

  if ( $status == 0x00000000 )    #WGPURequestAdapterStatus_Success)
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

  if ( $status == 0x00000000 )    #WGPURequestDeviceStatus_Success
  {
    $data->{device} = $device;
  }
  else
  {
    warn sprintf( "request_device status=%#.8x message=%s\n", $status, $msg );
  }
}

$instance->RequestAdapter( $ra_opt, \&handle_request_adapter,
  { asdf => 1, } );
my $supported_limits = WebGPU::Direct::SupportedLimits->new;

$adapter->GetLimits($supported_limits);
my $limits = $supported_limits->limits;

my $req_limits = WebGPU::Direct::RequiredLimits->new( { limits => $limits } );
my $devdesc
    = WebGPU::Direct::DeviceDescriptor->new( requiredLimits => $req_limits );
$adapter->RequestDevice( $devdesc, \&handle_request_device, { asdf => 1, } );

# Build the shader
my $shaderdesc = WebGPU::Direct::ShaderModuleDescriptor->new(
  {
    label       => 'shader.wsgl',
    nextInChain => WebGPU::Direct::ShaderModuleWGSLDescriptor->new(
      {
        sType => 0x00000006,
        code  => join( '', <DATA> ),
      }
    ),
  }
);

my $shader = $device->CreateShaderModule($shaderdesc);

# Build the pipeline pieces
my $queue   = $device->GetQueue;
my $pl_desc = WebGPU::Direct::PipelineLayoutDescriptor->new(
  label => 'pipeline_layout' );
my $pipeline_layout = $device->CreatePipelineLayout($pl_desc);
my $tex_fmt         = $surface->GetPreferredFormat($adapter);

my $rpd = WebGPU::Direct::RenderPipelineDescriptor->new(
  label  => 'render_pipeline',
  layout => $pipeline_layout,
  vertex => WebGPU::Direct::VertexState->new(
    module     => $shader,
    entryPoint => 'vs_main',
  ),
  fragment => WebGPU::Direct::FragmentState->new(
    module      => $shader,
    entryPoint  => 'fs_main',
    targetCount => 1,
    targets     => WebGPU::Direct::ColorTargetState->new(
      format    => $tex_fmt,
      writeMask => 0x0000000F,
    ),
  ),
  primitive => WebGPU::Direct::PrimitiveState->new(
    topology => 0x00000003,
  ),
  multisample => WebGPU::Direct::MultisampleState->new(
    count => 1,
    mask  => 0xFFFFFFFF,
  ),
);

my $pipeline = $device->CreateRenderPipeline($rpd);

my $sc_config = WebGPU::Direct::SwapChainDescriptor->new(
  usage       => 0x00000010,
  format      => $tex_fmt,
  presentMode => 0x00000002,
  width       => 640,
  height      => 360,
);

my $swapchain = $device->CreateSwapChain( $surface, $sc_config );

my $passcolor = WebGPU::Direct::RenderPassColorAttachment->new(
  loadOp     => 0x00000001,
  storeOp    => 0x00000001,
  clearValue => WebGPU::Direct::Color->new(
    r => 0.0,
    g => 1.0,
    b => 0.0,
    a => 1.0,
  ),
);

my $passdesc = WebGPU::Direct::RenderPassDescriptor->new(
  label                => "render_pass_encoder",
  colorAttachmentCount => 1,
  colorAttachments     => $passcolor,
);

my $start  = time;
my $frames = 1000;
for ( 1 .. 1000 )
{
  my $next_tex = $swapchain->GetCurrentTextureView;

  my $cmdenc = $device->CreateCommandEncoder(
    WebGPU::Direct::CommandEncoderDescriptor->new );

  $passcolor->view($next_tex);
  my $passenc = $cmdenc->BeginRenderPass($passdesc);

  $passenc->SetPipeline($pipeline);
  $passenc->Draw( 3, 1, 0, 0 );
  $passenc->End;

  my $cmdbuf
      = $cmdenc->Finish( WebGPU::Direct::CommandBufferDescriptor->new );

  $queue->Submit( [$cmdbuf] );
  $swapchain->Present;

  $cmdbuf->Release;
  $passenc->Release;
  $cmdenc->Release;
  $next_tex->Release;
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
