#include <Rcpp.h>
#undef Realloc
#undef Free
#include <windows.h>
#include <string>
using namespace Rcpp;

// [[Rcpp::export]]
void press_c (Rcpp::NumericVector x, Rcpp::NumericVector s, Rcpp::LogicalVector p){
  
  DWORD flags;
  
  // Press the key
  for (int ii = 0; ii < x.size(); ii++)
  {
    
    if(p[ii] == TRUE) {
      flags = KEYEVENTF_EXTENDEDKEY;
    } else {
      flags = 0;
    }
    
    keybd_event(x[ii],s[ii],flags,0);
  }
  
}
