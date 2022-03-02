%{    
  Grade  |    Scale
-----------------------
    A+   |   18 - 20
    A    |   16 - 17.99
    B    |   14 - 15.99
    C    |   12 - 13.99
    D    |   10 - 11.99
    F    |   0 - 9.99
%}

clc
clear all;
close all;
grade = "";

number = input('Enter your grade\n');

if number>=18 && number<=20
    grade = "A+";
elseif number>=16 && number<=17.99
    grade = "A";
elseif number>=14 && number<=15.99
    grade = "B";
elseif number>=12 && number<=13.99
    grade = "C";
elseif number>=10 && number<=11.99
    grade = "D";
elseif number>=0 && number<=9.99
    grade = "F";
else 
    fprintf('Error: Please only enter numbers between 0-20\n')
end

if grade ~= ""
   fprintf('Grade in GPA: %s \n',grade);
end
