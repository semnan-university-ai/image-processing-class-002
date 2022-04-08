clc;
clear;
close all;
studentnumber=input('enter a number of 20:');
score100 = studentnumber * 5;
if studentnumber<= 100 && studentnumber>=97
    ans = 'A+';
    numScale4 = 4;
elseif studentnumber<= 96 && round(score100) >=93
    ans = 'A';
    numScale4 = 4;
elseif studentnumber<= 92 && round(score100) >=90
    ans = 'A-';
    numScale4 = 3.7;
elseif studentnumber<= 89 && round(score100) >=87
    ans = 'B+';
    numScale4 = 3.3;
elseif studentnumber<= 86 && round(score100) >=83
    ans = 'B';    
    numScale4 = 3.0;
elseif studentnumber<= 82 && round(score100) >=80
    ans = 'B-';
    numScale4 = 2.7;
elseif studentnumber<= 79 && round(score100) >=77
    ans = 'C+';
    numScale4 = 2.3;
elseif studentnumber<= 76 && round(score100) >=73
    ans = 'C';
    numScale4 = 2.0;
elseif studentnumber<= 72 && round(score100) >=70
    ans = 'C-';
    numScale4 = 1.7;
elseif studentnumber<= 69 && round(score100) >=67
    ans = 'D+';
    numScale4 = 1.3;
elseif studentnumber<= 66 && round(score100) >=65
    ans = 'D';
    numScale4 = 1.0;
elseif studentnumber<= 64 && round(score100) >=60
    ans = 'D-';
    numScale4 = 1.0;
elseif studentnumber<= 59
    ans = 'F';
    numScale4 = 0.0;
else
    ans = 'number is not true...';   
end
