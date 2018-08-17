#include <Rcpp.h>
#undef Realloc
#undef Free
#include <windows.h>
#include <string>
using namespace Rcpp;

// [[Rcpp::export]]
void press_c (Rcpp::NumericVector x){
  for (int ii = 0; ii < x.size(); ii++)
  {
    keybd_event(x[ii],0,0,0);
  }
}

//Rcpp::sourceCpp("C:/Users/ChiHang/Documents/GitHub/KeyboardSimulator/KeyboardSimulator/src/press_and_release.cpp")
//alt 18
//alt 115
