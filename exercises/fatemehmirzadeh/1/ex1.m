%fatemeh mirzadeh

%A+=19-20
%A=18-19
%B+=17-18
%B=15-17
%C+=14-15
%C=12-14
%D=10-12
%F=0-10


clc;
clear;
close all;

mark=input('please enter the score:');
if mark >= 19 && mark <= 20
    level = "A+"
elseif mark >= 18 && mark < 19
    level = "A"
elseif mark >= 17 && mark < 18
    level = "B+"
elseif mark >= 15 && mark < 17
    level = "B"
elseif mark >= 14 && mark < 15
    level = "C+"    
elseif mark >=12  && mark < 14
    level = "C"
elseif mark >= 10 && mark < 12
    level = "D"
elseif mark >= 0 && mark < 10
    level = "F : Fail"
else
    ans = "Out of range"
end 