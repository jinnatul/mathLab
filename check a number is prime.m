%{
  Write a MATLAB program to check a number is prime.
%}

num = input('Enter Number: ');
check = 0;
for now = 2:num - 1
   if mod(num, now) == 0 
    check = 1;
   end
end

if (check == 1) disp('Not Prime');
else disp('Prime');
end

%{

Enter Number: 7
Output: Prime

Enter Number: 12
Output: Not Prime

%}
