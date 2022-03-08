%Atefeh Khosravani's exercise 01


clc;
clear;
close all;

StudentScore = input('enter your score between 0-20: ');

Score = StudentScore *5;

if Score <= 100 && Score >96
    Level = "A+";
    Grade = 4;
   elseif Score <= 96 && Score > 92
    Level = "A";
    Grade = 4;
  elseif Score <= 92 && Score > 89
    Level = "A-";
    Grade = 3.7;
  elseif Score <= 89 && Score > 86
    Level = "B+";
    Grade = 3.3;
  elseif Score <= 86 && Score > 82
    Level = "B";
    Grade = 3;
  elseif Score <= 82 && Score > 80
    Level = "B-";
    Grade = 2.7;
  elseif Score <= 79 && Score > 76
    Level = "C+";
    Grade = 2.3;
  elseif Score <= 76 && Score > 72
    Level = "C";
    Grade = 2.;
  elseif Score <= 72 && Score > 69
    Level = "C-";
    Grade = 1.7;
  elseif Score <= 69 && Score > 66
    Level = "D+";
    Grade = 1.3;
  elseif Score <= 66 && Score > 64
     Level = "D";
     Grade = 1;
  elseif Score <= 64 && Score > 59
     Level = "D-";
     Grade = 1;
  elseif Score <= 59 && Score > 49
     Level = "E: You are failed";
     Grade = 0;
  elseif Score <= 49 && Score >= 0
     Level = "F: You are failed";
     Grade = 0;

else
    score = "Your score is out of range"
end