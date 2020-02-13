%{
  Write MATLAB program that will input a range and display the sum of odd numbers.
%}

num1 = input('START Num: ');
num2 = input('End Num: ');
sum = 0;
for num = num1:num2
   if mod(num, 2) == 1 
    sum = sum + num;
   end
end
disp(sum);
