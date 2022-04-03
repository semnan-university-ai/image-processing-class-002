clc;
clear;
close all;

score=input('enter the score:');
if score >= 19 && score <= 20
    grade = "A+ (4.5)"
elseif score >= 18 && score < 19
    grade = "A (4.0)"
elseif score >= 17 && score < 18
    grade = "B+ (3.5)"
elseif score >= 15 && score < 17
    grade = "B (3.0)"
elseif score >= 14 && score < 15
    grade = "C+ (2.5)"    
elseif score >=12  && score < 14
    grade = "C (2.0)"
elseif score >= 10 && score < 12
    grade = "D (1.0)"
elseif score >= 0 && score < 10
    grade = "F (0.0) : Failure to pass the exam"
else
    grade = "score is not correct"
end 