%{
  Write MATLAB program that will input a number and display even or odd.
%}

num = input('Enter a number : ');

if mod(num, 2) == 0 
    disp('Even');
else
    disp('Odd');
    
end
