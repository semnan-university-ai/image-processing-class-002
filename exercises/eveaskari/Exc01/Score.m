clc;
clear;
close all;

stnum = input("enter your score: ");

if stnum > 19 && stnum <= 20
    score = "A+"
elseif stnum > 18 && stnum <= 19
    score = "A"
elseif stnum > 17 && stnum <= 18
    score = "B+"
elseif stnum > 16 && stnum <= 17
    score = "B"
elseif stnum > 15 && stnum <= 16
    score = "B-"
elseif stnum > 14 && stnum <= 15
    score = "C+"
elseif stnum > 13 && stnum <= 14
    score = "C"
elseif stnum > 12 && stnum <= 13
    score = "C-"
elseif stnum > 10 && stnum <= 12
    score = "E"
elseif stnum > 0 && stnum <= 10
    score = "F"
end
    