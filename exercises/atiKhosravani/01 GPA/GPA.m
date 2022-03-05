%Atefeh Khosravani's exercise 01

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

snum = input('enter your score: ');

if snum >= 19 && snum <= 20
    score = "A+"
elseif snum >= 18 && snum < 19
    score = "A"
elseif snum >= 17 && snum < 18
    score = "B+"
elseif snum >= 15 && snum < 17
    score = "B"
elseif snum >= 14 && snum < 15
    score = "C+"
elseif snum >= 12 && snum < 14
    score = "C"
elseif snum >= 10 && snum < 12
    score = "D"
elseif snum >= 0 && snum < 10
    score = "F: You are failed"
else
    score = "Your score is out of range"
end