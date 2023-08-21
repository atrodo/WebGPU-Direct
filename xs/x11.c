#ifdef HAS_X11

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <webgpu/webgpu.h>
#include <X11/Xlib.h>

bool x11_window(WGPUSurfaceDescriptorFromXlibWindow *result, int xw, int yh)
{
  Zero((void*)result, 1, WGPUSurfaceDescriptorFromXlibWindow);
  xw = xw || 640;
  yh = yh || 360;

  result->chain.sType = WGPUSType_SurfaceDescriptorFromXlibWindow;
  result->display = XOpenDisplay(NULL);

  if (!result->display)
  {
    return false;
  }

  int scrnum = DefaultScreen( result->display );
  result->window = XCreateSimpleWindow(result->display, DefaultRootWindow(result->display),
			    10, 10,
			    xw, yh,
			    1, 0,
			    0
			   );

  Window root = RootWindow( result->display, scrnum );

  if ( !root )
  {
    XCloseDisplay( result->display );
    return false;
  }

  XMapWindow( result->display, result->window );
  result->chain.sType = WGPUSType_SurfaceDescriptorFromXlibWindow;

  XSelectInput(result->display, result->window, ExposureMask | KeyPressMask);
  for (int i = 0; i < 10; i++)
  {
    XEvent e = {};
    XNextEvent(result->display, &e);
    if (e.type == Expose) {
      XFillRectangle(result->display, result->window, DefaultGC(result->display, scrnum), 20, 20, 10, 10);
      break;
    }
  }

  return true;
}

#endif
