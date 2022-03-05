%GPA for persian scores
%GPA
clear
clc
grade=input("please enter your score from 1-20 :");
final=grade*5;
if(final >=95) && (final <= 100)
    disp('A+ -- 4.00')
elseif(final >=90) && (final <= 94)
    disp('A -- 3.50')
elseif(final >=85) && (final <= 89)
    disp('B+ -- 3.00')
elseif(final >=80) && (final <= 84)
    disp('B -- 2.50')
elseif(final >=75) && (final <= 79)
    disp('C+ -- 2.00')
elseif(final >=70) && (final <= 74)
    disp('C' -- 1.50)
elseif(final >=65) && (final <= 69)
    disp('D+ -- 1.00')
elseif(final >=60) && (final <= 64)
    disp('D' -- 0.50)
elseif(final >=0) && (final <= 59)
    disp('F' -- 0.00)
else
    disp('System does not accept your score')
end
