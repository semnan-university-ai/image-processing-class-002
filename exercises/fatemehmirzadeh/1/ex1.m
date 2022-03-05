%fatemeh mirzadeh
clear;close all;clc;

mark=input('enter your mark in scale of 20: ');
%convert the mark to 100 
mark100 = mark * 5;
if mark100 <= 100 && mark100 >=97
    level = "A+";
    markscale = 4;
elseif mark100 <= 96 && mark100 >=93
    level = "A";
    markscale = 4;
elseif mark100 <= 92 && mark100 >=90
    level = "A-";
    markscale = 3.7;
elseif mark100 <= 89 && mark100 >=87
    level = "B+";
    markscale = 3.3;
elseif mark100 <= 86 && mark100 >=83
    level = "B";    
   markscale = 3.0;
elseif mark100 <= 82 && mark100 >=80
    level = "B-";
    markscale = 2.7;
elseif mark100 <= 79 && mark100 >=77
    level = "C+";
    markscale = 2.3;
elseif mark100 <= 76 && mark100 >=73
    level = "C";
    markscale = 2.0;
elseif mark100 <= 72 && mark100 >=70
    level = "C-";
    markscale = 1.7;
elseif mark100 <= 69 && mark100 >=67
    level = "D+";
    markscale = 1.3;
elseif mark100 <= 66 && mark100 >=65
    level = "D";
    markscale = 1.0;
elseif mark100 <= 64 && mark100 >=60
    level = "D-";
    markscale = 1.0;
elseif mark100 <= 59 && mark100 >=0
    level = "F";
    markscale = 0.0;
else
    level = 'the number you enter isnt correct';
    markscale = 'the number you enter isnt correct';
    mark100 ='the number you enter isnt correct';
    mark = 'the number you enter isnt correct';
end
   