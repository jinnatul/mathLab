%{
  Input 
      lower = 0.5
      upper = 1.0
      Error Accept <= 0.01 % 

    Output:
      0.5000    0.5980    0.5606    6.6615

      0.5000    0.5606    0.5573    0.5930

      0.5000    0.5573    0.5571    0.0513

      0.5000    0.5571    0.5570    0.0044
   
   Call Method: FalsePosition(0.5,1.0,0.01)
%}

function FalsePosition(lw, up, erRate)

     xr = callRoot(lw, up);
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
         
         xr = callRoot(lw, up);
         
         perCent = (abs(xr - preXr)/xr) * 100;
         output=[lw' up' xr' perCent'];
         disp(output);
         if(perCent < erRate) 
             break;
         end
         preXr = xr;
     end
end

function xr = callRoot(lw, up)
     xr = up - ((callFunction(up)*(lw - up))/(callFunction(lw) - callFunction(up)));
end

function funVal = callFunction(x)
    funVal = power(x, 5) - (8 * power(x, 4)) + (44 * power(x, 3)) - (91 * power(x, 2)) + (85 * x) - 26;
end
