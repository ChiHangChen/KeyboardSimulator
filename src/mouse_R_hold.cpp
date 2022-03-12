#include <Rcpp.h>
#undef Realloc
#undef Free
#include <windows.h>
#include <string>
using namespace Rcpp;

// [[Rcpp::export]]
void mouse_right_hold (){
  mouse_event (MOUSEEVENTF_RIGHTDOWN, 0, 0, 0, 0 ) ;
}
