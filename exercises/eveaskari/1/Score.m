clc;
clear;
close all;

stnum = input("enter your score: ");

if stnum > 19 && stnum <= 20
    score = "A+ = 4.0"
elseif stnum > 18 && stnum <= 19
    score = "A = 4.0"
elseif stnum > 17 && stnum <= 18
    score = "A- = 3.7"
elseif stnum > 16 && stnum <= 17
    score = "B+ = 3.3"
elseif stnum > 15.5 && stnum <= 16
    score = "B = 3.0"
elseif stnum > 15 && stnum <= 15.5
    score = "B- = 2.7"
elseif stnum > 14.5 && stnum <= 15
    score = "C+ = 2.3"
elseif stnum > 14 && stnum <= 14.5
    score = "C = 2.0"
elseif stnum > 13 && stnum <= 14
    score = "C- = 1.7"
elseif stnum > 12 && stnum <= 13
    score = "D+ = 1.3"
elseif stnum > 11 && stnum <= 12
    score = "D = 1.0"
elseif stnum > 10 && stnum <= 11
    score = "D- = 0.7"
elseif stnum > 5 && stnum <= 10
    score = "E = 0.0"
elseif stnum > 0 && stnum <= 5
    score = "F = 0.0"
end
    
