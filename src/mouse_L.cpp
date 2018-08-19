#include <Rcpp.h>
#undef Realloc
#undef Free
#include <windows.h>
#include <string>
using namespace Rcpp;

// [[Rcpp::export]]
void mouse_left_click (){
  mouse_event (MOUSEEVENTF_LEFTDOWN | MOUSEEVENTF_LEFTUP, 0, 0, 0, 0 ) ;
}

//Rcpp::sourceCpp("C:/Users/ChiHang/Documents/GitHub/KeyboardSimulator/KeyboardSimulator/src/press_and_release.cpp")
//alt 18
//alt 115
