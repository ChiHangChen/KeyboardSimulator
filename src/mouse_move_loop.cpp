#include <Rcpp.h>
#undef Realloc
#undef Free
#include <windows.h>
#include <string>
using namespace Rcpp;

// [[Rcpp::export]]
void MouseMove_loop(NumericVector xaxis_path,NumericVector yaxis_path,double time_Seg)
{
	int n = xaxis_path.size();
	for(int i = 0; i < n; ++i) {
    		SetCursorPos(xaxis_path[i], yaxis_path[i]);
		Sleep(time_Seg*1000);
	}
}
