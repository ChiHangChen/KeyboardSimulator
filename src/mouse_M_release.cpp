#include <Rcpp.h>
#undef Realloc
#undef Free
#include <windows.h>
#include <string>
using namespace Rcpp;

// [[Rcpp::export]]
void mouse_middle_release (){
  mouse_event (MOUSEEVENTF_MIDDLEUP, 0, 0, 0, 0 ) ;
}
