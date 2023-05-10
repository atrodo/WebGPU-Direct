#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <webgpu/webgpu.h>

typedef WGPUSurfaceDescriptor* WebGPU__Direct__WGPUSurfaceDescriptor;

MODULE = WebGPU::Direct		PACKAGE = WebGPU::Direct::XS		PREFIX = wgpu

INCLUDE: xs/webgpu.xs

#ifdef HAS_X11

MODULE = WebGPU::Direct         PACKAGE = WebGPU::Direct::XS::Backend         PREFIX = wgpu

#include <X11/Xlib.h>

WGPUSurface
CreateSurface(CLASS)
        char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
        Zero((void*)&RETVAL, sizeof(RETVAL), char);
        {
          WGPUInstance instance;
          WGPUSurface surface;
          WGPUAdapter adapter;
          WGPUDevice device;
          WGPUSwapChainDescriptor config;
          WGPUSwapChain swapchain;
          instance = wgpuCreateInstance(&(const WGPUInstanceDescriptor){0});

	  int xw = 640;
	  int yh = 360;
	  {
            Display *display = NULL;
            Window window = 0;
	    display = XOpenDisplay(NULL);

	    if (!display)
	    {
	      XSRETURN_UNDEF;
	    }

	    window = XCreateSimpleWindow(display, DefaultRootWindow(display),
				      10, 10,
				      xw, yh,
				      1, 0,
				      0
				     );

	    int scrnum = DefaultScreen( display );
	    Window root = RootWindow( display, scrnum );

	    XMapWindow( display, window );

            const WGPUSurfaceDescriptor *d = &(const WGPUSurfaceDescriptor){
              .nextInChain =
                  (const WGPUChainedStruct *)&(
                      const WGPUSurfaceDescriptorFromXlibWindow){
                      .chain =
                          (const WGPUChainedStruct){
                              .sType = WGPUSType_SurfaceDescriptorFromXlibWindow,
                          },
                      .display = display,
                      .window = window,
                  },
            };
            RETVAL = wgpuInstanceCreateSurface(instance, d);
	  }
        }
    OUTPUT:
        RETVAL

WGPUSurfaceDescriptorFromXlibWindow
new_window_x11(CLASS, xw, yh)
        char *CLASS = NO_INIT
        int   xw
        int   yh
    PROTOTYPE: $
    CODE:
        Zero((void*)&RETVAL, sizeof(RETVAL), char);
        xw = xw || 640;
        yh = yh || 360;
        {
          RETVAL.chain.sType = WGPUSType_SurfaceDescriptorFromXlibWindow;
          RETVAL.display = XOpenDisplay(NULL);

          if (!RETVAL.display)
          {
            XSRETURN_UNDEF;
          }

          RETVAL.window = XCreateSimpleWindow(RETVAL.display, DefaultRootWindow(RETVAL.display),
                                    10, 10,
                                    xw, yh,
                                    1, 0,
                                    0
                                   );

          int scrnum = DefaultScreen( RETVAL.display );
          Window root = RootWindow( RETVAL.display, scrnum );

          XMapWindow( RETVAL.display, RETVAL.window );
        }
    OUTPUT:
        RETVAL


#endif
