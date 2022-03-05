clc;clear;close all;

number=input('enter the number:');
if number >= 19 && number <= 20
    level = "A+"
elseif number >= 18 && number < 19
    level = "A"
elseif number >= 17 && number < 18
    level = "B+"
elseif number >= 15 && number < 17
    level = "B"
elseif number >= 14 && number < 15
    level = "C+"    
elseif number >=12  && number < 14
    level = "C"
elseif number >= 10 && number < 12
    level = "D"
elseif number >= 0 && number < 10
    level = "F : Fail"
else
    level = "number is not correct"
end 
