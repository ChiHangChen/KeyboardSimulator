#include <Rcpp.h>
#undef Realloc
#undef Free
#include <windows.h>
#include <string>
using namespace Rcpp;

// [[Rcpp::export]]
void MouseMove(int x, int y)
{
    SetCursorPos(x, y);
}

