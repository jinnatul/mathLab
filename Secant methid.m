%{
    call: Secant(inline('x^3-0.165*x*x+0.0003993','x'), 0.02, 0.05, 1)
%}

function Secant(fun, prePos, nowPos, accErr)
    
    while (true)
        nextPos = funCall(fun, prePos, nowPos);
        perCent = (abs(nextPos - prePos)/nextPos) * 100;
        
        output=[prePos' nowPos' nextPos' perCent'];
        disp(output);
        if(perCent < accErr) 
            break;
        end
        prePos = nowPos;
        nowPos = nextPos;
    end
end

function nextPos = funCall(fun, prePos, nowPos)
    nextPos = nowPos - (fun(nowPos)*abs(nowPos - prePos))/(fun(nowPos) - fun(prePos));
end
