#ifdef HAS_WIN32

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <windows.h>

LRESULT CALLBACK WindowProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam)
{
  warn("%d\n", msg);
  switch(msg)
  {
    case WM_CLOSE:
      DestroyWindow(hwnd);
    break;
    case WM_DESTROY:
            PostQuitMessage(0);
    break;
    default:
      return DefWindowProc(hwnd, msg, wParam, lParam);
  }
  return 0;
}

bool win32_window(WGPUSurfaceDescriptorFromWindowsHWND *result, int xw, int yh)
{
  Zero((void*)result, 1, WGPUSurfaceDescriptorFromWindowsHWND);
  xw = xw ? xw : 640;
  yh = yh ? yh : 360;

  HINSTANCE hinstance = (HINSTANCE)GetModuleHandle(NULL);

  LPCSTR CLASS_NAME  = "WebGPU::Direct Sample Window Class";

  WNDCLASS wc = { };
  wc.lpfnWndProc   = WindowProc;
  wc.hInstance     = hinstance;
  wc.lpszClassName = CLASS_NAME;

  RegisterClass(&wc);

  HWND hwnd = CreateWindowEx(
    0,                   // window behaviors
    CLASS_NAME,
    "WebGPU::Direct",
    WS_OVERLAPPEDWINDOW,

    // Size and position
    CW_USEDEFAULT, CW_USEDEFAULT,
    xw, yh,

    NULL,       // Parent
    NULL,       // Menu
    hinstance,
    NULL        // userdata
  );

  if (hwnd == NULL)
  {
    return false;
  }

  ShowWindow(hwnd, SW_NORMAL);

  result->chain.sType = WGPUSType_SurfaceDescriptorFromWindowsHWND;
  result->hinstance   = hinstance;
  result->hwnd        = hwnd;

  return true;
}

#endif
