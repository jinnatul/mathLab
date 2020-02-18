/*
  Input
    Low Position = 0.5 
    Upper Position = 1.0
    Error Accept = 0.1%
  Output
    0.5 0.59799 0.560643 6.66146
    0.5 0.560643 0.557338 0.592956
    0.5 0.557338 0.557052 0.051288
*/


#include <bits/stdc++.h>
using namespace std;

double callFunction(double x)
{
    double ans = pow(x, 5) - (8 * pow(x, 4)) + (44 * pow(x, 3)) - (91 * pow(x, 2));
    ans += (85 * x) - 26;
    return ans;
}

double callRoot(double lw, double up)
{
    double xr = up - ((callFunction(up)*(lw - up))/(callFunction(lw) - callFunction(up)));
    return xr;
}

int main() {

    double lw, up, xr;

    cin >> lw >> up;

    xr = callRoot(lw, up);

    double  preXr = xr;
    while (true) {
        double temp = callFunction(lw) * callFunction(xr);
        if(temp < 0) up = xr;
        else if(temp > 0) lw = xr;
        else break;

        xr = callRoot(lw, up);
        double perCent = (abs(xr - preXr)/xr) * 100;

        cout << lw << " " << up << " " << xr << " " << perCent << endl;

        if(perCent < 0.1) break;
        preXr = xr;
    }

    return 0;
}
