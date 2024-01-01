use strict;
use Test::More;

use WebGPU::Direct;

my $wgpu = WebGPU::Direct->new;

my $a = $wgpu->VertexState->new(
  buffers => [
    {
      arrayStride => 10,
      stepMode    => $wgpu->VertexStepMode->Vertex,
      attributes  => [
        {
          # position
          shaderLocation => 0,
          offset         => 0,
          format         => $wgpu->VertexFormat->Float32x4,
        },
        {
          # uv
          shaderLocation => 1,
          offset         => 4,
          format         => $wgpu->VertexFormat->Float32x2,
        },
      ],
    },
  ],
);

my $b = $wgpu->RenderPipelineDescriptor->new(
  {
    vertex => {
      buffers => [
        {
          arrayStride => 10,
          stepMode    => $wgpu->VertexStepMode->Vertex,
          attributes  => [
            {
              # position
              shaderLocation => 0,
              offset         => 0,
              format         => $wgpu->VertexFormat->Float32x4,
            },
            {
              # uv
              shaderLocation => 1,
              offset         => 4,
              format         => $wgpu->VertexFormat->Float32x2,
            },
          ],
        },
      ],
    },
  }
);

is( $b->vertex->bufferCount,                  1, 'Buffer count is correct' );
is( $b->vertex->buffers->[0]->attributeCount, 2, 'Attributes count is correct' );
unlike( $b->vertex->bytes,               qr/^\0+$/, 'Vertex is not completely empty' );
unlike( $b->vertex->buffers->[0]->bytes, qr/^\0+$/, 'Vertex buffer is not completely empty' );

done_testing;
