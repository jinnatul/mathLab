%{
  Write a MATLAB program to check a year is leapyear.
%}


year = input ('Enter the year : ')
if mod(year,4) == 0 disp ('Leap Year')
elseif mod(year,100) == 0 disp ('Not Leap Year')
elseif mod(year,400) == 0 disp ('Leap Year')
else disp ('Not Leap Year')
end
