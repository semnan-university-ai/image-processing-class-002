clc;
clear;
close all;

%num1 = 4;
%num2 = 6;
%num1 * num2;
%num3 = num1 + num2;
%num3 = num3 * ans;


studnetnumber = input("enter a number: ");

if studnetnumber > 96 && studnetnumber <= 100
    ans = "A+"
elseif studnetnumber > 95 && studnetnumber <= 96
    ans = "A"
elseif studnetnumber > 89 && studnetnumber <= 92
    ans = "A-"
else
    ans = "z"
end


