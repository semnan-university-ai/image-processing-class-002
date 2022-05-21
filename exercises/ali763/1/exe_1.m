clc, clear;
score = input('please enter the score: ');
if      0 <=  score && score <10  
    disp('the grade is F and GPA is 0');
elseif  10 <= score && score <12
    disp('the grade is D and GPA is 1');
elseif  12 <= score && score <14
    disp('the grade is C and GPA is 2');
elseif  14 <= score && score <16
    disp('the grade is B and GPA is 3');
elseif  16 <= score && score <18
    disp('the grade is A and GPA is 4'); 
elseif  18 <= score && score <=20 
    disp('the grade is A+ and GPA is 4'); 
else          score<0| score >20
    disp('input num is out of range');
end
