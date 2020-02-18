#include <bits/stdc++.h>
using namespace std;

double callFunction(double x)
{
    double ans = pow(x, 5) - (8 * pow(x, 4)) + (44 * pow(x, 3)) - (91 * pow(x, 2));
    ans += (85 * x) - 26;
    return ans;
}

int main() {

    double lw, up, xr;

    cin >> lw >> up;

    if(callFunction(lw) * callFunction(up) >= 0) {
        cout << "No Root Here..." << endl;
        return 0;
    }


    xr = (lw + up)/2.0;

    double  preXr = xr;
    while (true) {
        double temp = callFunction(lw) * callFunction(xr);
        if(temp < 0) up = xr;
        else if(temp > 0) lw = xr;
        else break;

        xr = (lw + up)/2.0;
        double perCent = (abs(xr - preXr)/xr) * 100;

        cout << lw << " " << up << " " << xr << " " << perCent << endl;

        if(perCent < 10) break;
        preXr = xr;
    }

    return 0;
}

/*
Input 
  lower = 0.5
  upper = 1.0
 
Error Accept <= 10 % 
Output:
0.5 0.75 0.625 20
0.5 0.625 0.5625 11.1111
0.5 0.5625 0.53125 5.88235

*/
