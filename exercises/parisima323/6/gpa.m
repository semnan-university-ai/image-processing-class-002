clc
clear all
close all
Score = input("enter  your Score from 0-20: ");
Score = Score *5;
if (Score >= 0) && (Score < 40)
     Course = "E";
     Grade = 0;
   elseif (Score >= 40) && (Score < 50)
     Course = "D";
     Grade = 1;
  elseif (Score >= 50) && (Score < 55)
    Course = "D+";
    Grade = 1.3;
  elseif (Score >= 55) && (Score < 60)
    Course = "C-";
    Grade = 1.7;
  elseif (Score >= 60) && (Score < 65)
    Course = "C";
    Grade = 2.;
  elseif (Score >= 65) && (Score < 70)
    Course = "C+";
    Grade = 2.3;
  elseif (Score >= 70) && (Score < 75)
    Course = "B-";
    Grade = 2.7;
  elseif (Score >= 75) && (Score < 80)
    Course = "B";
    Grade = 3;
  elseif (Score >= 80) && (Score < 85)
    Course = "B+";
    Grade = 3.3;
  elseif (Score >= 85) && (Score < 90)
    Course = "A-";
    Grade = 3.7;
  elseif (Score >= 90) && (Score < 95)
    Course = "A";
    Grade = 4;
  elseif (Score >= 95) && (Score <=100)
    Course = "A+";
    Grade = 4;
  else
    fprintf("its not between 0-20")
 endif 
 Course
 Grade