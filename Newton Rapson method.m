function NewtoRapson (x0, accErr)
    preXr = x0;
    
    while(true)
        nowXr = callVal(preXr);
        perCent = (abs(nowXr - preXr)/nowXr) * 100;
        
        output=[preXr' nowXr' perCent'];
         disp(output);
         if(perCent < accErr) 
             break;
         end
         preXr = nowXr;
    end
    
end

function value = callVal(x)
    value = x - (power(x, 2) - 4)/(2*x);
end
