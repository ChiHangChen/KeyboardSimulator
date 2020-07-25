#include <Rcpp.h>
#undef Realloc
#undef Free
#include <windows.h>
#include <string>
using namespace Rcpp;

// [[Rcpp::export]]
NumericVector get_cursor(){
  NumericVector r(2);
  POINT point;
  GetCursorPos(&point);
  r[0]=point.x;
  r[1]=point.y;
  return r;
}