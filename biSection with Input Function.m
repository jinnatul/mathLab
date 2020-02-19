%{
  Just Call: BisectionMethod(inline('x^3-2','x'),1,2,0.1)
%}

function BisectionMethod(fun, lw, up, erRate)

     xr = (lw + up)/2.0;
     preXr = xr;
     
     while(true)
         temp = fun(lw) * fun(xr);
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
