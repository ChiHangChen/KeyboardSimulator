#include <Rcpp.h>
#undef Realloc
#undef Free
#include <windows.h>
#include <string>
using namespace Rcpp;

// [[Rcpp::export]]
void release_c (Rcpp::NumericVector x, Rcpp::NumericVector s, Rcpp::LogicalVector p){
  
  DWORD flags;
  
  // Release the key
  for (int ii = 0; ii < x.size(); ii++)
  {
    
    if(p[ii] == TRUE) {
      flags = KEYEVENTF_EXTENDEDKEY | KEYEVENTF_KEYUP;
    } else {
      flags = KEYEVENTF_KEYUP;
    }
    
    keybd_event(x[ii],s[ii],flags,0);
  }
}
