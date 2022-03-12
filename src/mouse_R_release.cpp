#include <Rcpp.h>
#undef Realloc
#undef Free
#include <windows.h>
#include <string>
using namespace Rcpp;

// [[Rcpp::export]]
void mouse_right_release (){
  mouse_event (MOUSEEVENTF_RIGHTUP, 0, 0, 0, 0 ) ;
}
