%{
  Input 
    lower = 0.5
    upper = 1.0
    Error Accept <= 0.1 % 
  
  Output:
    0.5000    0.7500    0.6250   20.0000

    0.5000    0.6250    0.5625   11.1111

    0.5000    0.5625    0.5313    5.8824

    0.5313    0.5625    0.5469    2.8571

    0.5469    0.5625    0.5547    1.4085

    0.5547    0.5625    0.5586    0.6993

    0.5547    0.5586    0.5566    0.3509

    0.5566    0.5586    0.5576    0.1751

    0.5566    0.5576    0.5571    0.0876

%}


function xr = Bisection(lw, up, erRate)

     xr = (lw + up)/2.0;
     preXr = xr;
     
     while(true)
         temp = callFunction(lw) * callFunction(xr);
         if(temp > 0) 
             lw = xr;
         elseif(temp < 0) 
             up = xr;
         else
             break;
         end
         xr = (lw + up)/2.0;
         perCent = (abs(xr - preXr)/xr) * 100;
         output=[lw' up' xr' perCent'];
         disp(output);
         if(perCent < erRate) 
             break;
         end
         preXr = xr;
     end
end


function funVal = callFunction(x)
    funVal = power(x, 5) - (8 * power(x, 4)) + (44 * power(x, 3)) - (91 * power(x, 2)) + (85 * x) - 26;
end
