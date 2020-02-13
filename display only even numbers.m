%{
  Write MATLAB program that will input a range and display only the even numbers.
%}

num1 = input('START Num: ');
num2 = input('End Num: ');

for num = num1:num2
   if mod(num, 2) == 0 
    disp(num);
   end
end
