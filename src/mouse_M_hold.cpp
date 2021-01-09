#include <Rcpp.h>
#undef Realloc
#undef Free
#include <windows.h>
#include <string>
using namespace Rcpp;

// [[Rcpp::export]]
void mouse_middle_hold (){
  mouse_event (MOUSEEVENTF_MIDDLEDOWN, 0, 0, 0, 0 ) ;
}
