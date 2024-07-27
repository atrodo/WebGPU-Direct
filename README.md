# NAME

WebGPU::Direct - Direct access to the WebGPU native APIs.

# SYNOPSIS

    use WebGPU::Direct;
    my $wgpu = WebGPU::Direct->new;
    
    my $adapter = $wgpu->RequestAdapter;
    my $device  = $adapter->RequestDevice;

# DESCRIPTION

WebGPU::Direct is a thin, perl-ish coating over the WebGPU native APIs. While it provides some helper functions, much of the work is still left up to the developer to provide and know.

## EXPERIMENTAL STATUS

This module is currently _extremely_ experimental, including the documentation. This includes but is not limited to the following.

- Much of the XS code is automatically generated.
- Some arguments that are optional or has a default in the JavaScript WebGPU standard are required to be passed
- While all of the documentation is currently created, most of it is automatically generated from [webgpu/webgpu.h](https://github.com/webgpu-native/webgpu-headers).
- Not all of the generated documentation is currently accurate, for instance callbacks are handled in a perl-ish manner.
- Not all errors generated inside of WebGPU can be captured and likely will call `abort`
- Providing the window handle for rendering is done manually
- Sample window creation code does have any input or controls, only a WebGPU surface is shown
- Memory leaks are likely to exist
- This has only been tested with [wgpu-native](https://github.com/gfx-rs/wgpu-native), not with [Dawn](https://dawn.googlesource.com/dawn).
- The WebGPU native standard is not finalized and is likely to change

# FUNCTIONS

## new

    my $wgpu = WebGPU::Direct->new;

Create a new WebGPU::Direct instance. This inherits from [WebGPU::Direct::Instance](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3AInstance), but also provides easy access to [Constants](#constants) and [Types](#types).

## new\_window

    $wgpu->CreateSurface( { nextInChain => WebGPU::Direct->new_window( $width, $height ) } );

- Arguments
    - xw - Width of window
    - yh - Height of window

Constructs a `WebGPU::Direct::SurfaceDescriptorFrom*` object, usable for passing to [CreateSurface](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3AInstance#CreateSurface). These are crude and simplistic windows suitable for testing WebGPU with, but there are no options and doesn't come with any way to interact or configure the window.

Currently the supported windowing systems are:

- X11
- Wayland

## WebGPU::Direct::XS::HAS\_<FOO>

Constant indicating if `FOO` support is compiled in. This only indicates that `WebGPU::Direct` detected and compiled `FOO` was available when installed, making ["new\_window"](#new_window) available. `FOO` windows can still be used if you manually construct the `WebGPU::Direct::SurfaceDescriptorFrom*` object.

# METHODS

# TYPES

There are two basic segments of types: Structs and Opaque. The struct types have members that can manipulated and modified. The opaque types are implementation specific to WebGPU so they have no fields that can be directly accessed, but they do have functions made available to them.

The struct types can be instantiated by calling `new` on the class; opaque types can only be returned by functions.

Struct type classes can be access in a few different ways: with the class name directly or as a class method on `WebGPU::Direct`. Struct types can also be instantiated with the `new<TypeName>` functions on `WebGPU::Direct`.

    WebGPU::Direct::Color()->new({});
    WebGPU::Direct->Color->new;
    $wgpu->Color->new;
    WebGPU::Direct->newColor;
    $wgpu->newColor();

Often these type members and functions require other types. If these are given a plain hash, those hashes will be coerced into the correct type.

## Functions on all struct types

### new

    my $color = $wgpu->Color->new({ r => 0.0, g => 1.0, b => 0.2, a => 0.9 });

Create a new object of the requested type. It accepts either a hash or a single hashref parameters. This will automatically call [pack](https://metacpan.org/pod/pack) with the defaults and provided values. There is an associated `C` level struct stored in memory along side the object.

### pack

    $color->pack;

Take all of the members and copies the values from the `perl` level down to the `C` level struct in memory. Any references to other objects will be copied appropriately; in most cases this will copy a pointer to the referenced object. In some cases the entire struct will be copied into the object, in which case a new object will appear pointing directly to the new struct.

If you decide to manually manipulate the blessed hashref instead of using the mutator functions, you must call pack to propagate those changes down to the `C` level.

### unpack

    $color->unpack;

This is the opposite of ["pack"](#pack); this will take the values in the `C` level struct and ensure the `perl` level values match.

### bytes

    my $binary = $color->bytes;

Returns the underlying, raw memory bytes of the struct. This includes direct pointers to other structures and the like. There is no way to save any changes to the returned string back to the `C` level memory. [Caveat emptor](https://en.wikipedia.org/wiki/Caveat_emptor).

## Callbacks

In some places in the WebGPU API are callbacks; functions that are passed a function and userdata. The calls are adjusted so that regular perl subs can be passed along with arbitrary perl data. The calling parameters are dependant on the callback in question, but the last parameter will always be passed userdata.

## Arrays

Some types have arrays of data, represented at the `C` level as a pointer field and a count field. These are translated from `perl` arrayrefs into the appropriate types. If a single hashref is passed instead, it will be coerced into an array automatically.

## Enums

A value saved to an enum member will get coerced into the corresponding enum [constant](#constants).

# CONSTANTS

All of the WebGPU enum constant sets can be accessed in a few different ways: from the package directly, as class functions on `WebGPU::Direct`, and as exports from `WebGPU::Direct`. All three methods return the enum package for the set. Each of the following calls will produce the same results.

    use WebGPU::Direct qw/:all/;
    TextureFormat->RGBA8Uint;
    WebGPU::Direct::TextureFormat->RGBA8Uint;
    WebGPU::Direct->TextureFormat->RGBA8Uint;
    $wgpu->TextureFormat->RGBA8Uint;

Enums are implemented as [dualvars](https://metacpan.org/pod/Scalar%3A%3AUtil#dualvar), so the numerical value will be the integer value that WebGPU expects, but the string value will match WebGPU's enum name. In the example above, `RGBA8Uint` will have a value of `0x00000015` as well as `WGPUTextureFormat_RGBA8Uint`. Note that the enum name preserves both the WGPU and the enum set prefixes.

# ADDITIONAL WEBGPU INFORMATION

## Force32

All of the enums have a `Force32` value. These are not valid values, but are simply there to ensure that the underlying enum is a 32bit integer. WebGPU::Direct does not include them.

## SwapChain

There are older tutorials or code examples around the internet that use a `SwapChain` type, both for WebGPU native and JavaScript. Later revisions of WebGPU eliminated that type and moved its functionality onto Surface.

## WebGPU errors

The default operation of [RequestDevice](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3AAdapter#RequestDevice) will install an error handler using [SetUncapturedErrorCallback](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3ADevice#SetUncapturedErrorCallback) if a device is acquired. This means any errors not handled (generally using [PushErrorScope](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3ADevice#PushErrorScope)/[PopErrorScope](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3ADevice#PopErrorScope)) will be thrown as [Error](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3AError) objects. If you override how [RequestDevice](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3AAdapter#RequestDevice) searches for devices, you will need to install your own error handler.

**BE WARNED** that WebGPU is still young and experimental, and as such WebGPU native is more so as it lags behind the WebGPU JavaScript API. This means that not all errors will be passed to [SetUncapturedErrorCallback](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3ADevice#SetUncapturedErrorCallback), any may even abort instead, and may vary wildly between implementations and versions.

## Error Diagnostics

### invalid vertex shader module for vertex state

This is when the Buffer's step mode is invalid. Check the buffer objects in [VertexState](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3AVertexState) to ensure the sizes are correct and align with what data you are expecting to pack into a buffer.

### invalid vertex shader module for vertex state

This is when a vertex state does not include a valid [ShaderModuleDescriptor](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3AShaderModuleDescriptor).

### invalid bind group entry for bind group descriptor

In JavaScript examples, you may see a [BindGroupEntry](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3ABindGroupEntry) have a `resource` entry that points to a buffer, sampler or textureView. In WeGPU native, there is not that extra resource layer. So instead of `resource => { buffer => $x }`, simply use `buffer => $x`.

### (left == right), Texture\[1\] is no longer alive

There appears to be an issue with [ColorAttachment](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3AColorAttachment) inside of [RenderPassDescriptor](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3ARenderPassDescriptor), where just setting `$renderPassDescriptor->{colorAttachments}->[0]->{view}` on each frame causes this issue. This issue is likely inside of `WebGPU::Direct`. Generating a new [ColorAttachment](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3AColorAttachment) object should help while the fix is outstanding.

### Error reflecting bind group 0: Validation Error / Invalid group index 0

When a [RenderPipeline](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3ARenderPipeline) is being ran with an `auto` layout, that `layout` is not defined in the [RenderPipelineDescriptor](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3ARenderPipelineDescriptor) passed to `$device->CreateRenderPipeline`, WebGPU will auto analyze the `WGSL` to determine the group bindings. If a group binding is not used, the layout for it will not be included in the layout. You will need to either use the group binding in the shaders, or manually create and use a layout definition.

### Surface image is already acquired

The WebGPU JavaScript API and the WebGPU Native API differ slightly in how you interact with the hardware. In JavaScript, the [GPUCanvasContext](https://developer.mozilla.org/en-US/docs/Web/API/GPUCanvasContext) is used, and with the native it is a [Surface](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3ASurface). The core functions are in both, but the Native API has several extra that the JavaScript API does not have, most notably [Present](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3ASurface#Present), which informs the system that rendering is complete. Because of this, this you cannot acquire a [TextureView](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3ATextureView) twice in a single frame via the [CreateView](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3ATextureView#CreateView) function before calls to [Present](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3ASurface#Present). Tryig to get it a second time will will throw this error.

Because the JavaScript WebGPU API does not have a [Present](https://metacpan.org/pod/WebGPU%3A%3ADirect%3A%3ASurface#Present) function, examples will not include it; it happens implictly after each frame function. That means you must remember to call it at the end of each frame loop when the render is ready to go.

# AUTHOR

Jon Gentle <cpan@atrodo.org>

# COPYRIGHT

Copyright 2023- Jon Gentle

# LICENSE

This is free software. You may redistribute copies of it under the terms of the Artistic License 2 as published by The Perl Foundation.

# SEE ALSO

- [WebGPU](https://en.wikipedia.org/wiki/WebGPU)
- [WebGPU Working Draft](https://www.w3.org/TR/webgpu/)
- [WebGPU native API](https://github.com/webgpu-native/)
- [Dawn](https://dawn.googlesource.com/dawn)
- [wgpu-native](https://github.com/gfx-rs/wgpu-native)
