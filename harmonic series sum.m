%{
  Write a program in MATLAB to display the n terms of harmonic series and their sum.
    1 + 1/2 + 1/3 + 1/4 + 1/5 ... 1/n terms
%}

number = input('Enter Number: ');
sum = 1;
for num = 1:number
    sum = sum + 1/num;
end
disp(sum);
