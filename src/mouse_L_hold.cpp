#include <Rcpp.h>
#undef Realloc
#undef Free
#include <windows.h>
#include <string>
using namespace Rcpp;

// [[Rcpp::export]]
void mouse_left_hold (){
  mouse_event (MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0 ) ;
}
