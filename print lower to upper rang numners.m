%{
  Write a MATLAB program that will display the numbers from a user specified start
  number to a user specified stop number. Assume that the second number the user
  enters will be larger than the first number. Use iteration (for loop) to solve this problem.
  Run your program and verify that it operates correctly. A sample run should look like:
  Enter number 1: 4
  Enter number 2: 9
  1 2 3 4
  2 3 4 5 6 7 8 9
%}

num1 = input('START Num: ');
num2 = input('End Num: ');

for num = num1:num2
    disp(num);
end
