
%seyed ali motavally

clc;
clear;
close all;

studentNum = input("please enter the score:");

if studentNum >= 19 && studentNum <= 20
    score = "A+"

elseif studentNum >= 18 && studentNum < 19
    score = "A"

elseif studentNum >= 17 && studentNum < 18
    score = "B+"

elseif studentNum >= 15 && studentNum < 17
    score = "B"

elseif studentNum >= 14 && studentNum < 15
    score = "C+" 
   
elseif studentNum >=12  && studentNum < 14
    score = "C"

elseif studentNum >= 10 && studentNum < 12
    score = "D"

elseif studentNum >= 0 && studentNum < 10
    score = "F"

else
    score = "Wrong score"

end
