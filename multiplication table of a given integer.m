%{
  Write a program in MATLAB to display the multiplication table of a given integer
%}

number = input('Enter Number: ');
for now = 1:10
    sprintf('%d * %d = %d',now,number, now*number)
end

%{

number = 5

Output:
    1 * 5 = 5
    2 * 5 = 10
    3 * 5 = 15
    4 * 5 = 20
    5 * 5 = 25
    6 * 5 = 30
    7 * 5 = 35
    8 * 5 = 40
    9 * 5 = 45
    10 * 5 = 50

%}
