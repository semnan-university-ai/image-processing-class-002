clc;
clear all;
close all;
grade = "";
number = input('Enter your grade\n');

if number>=0 && number<=20
    number=fix(number*5);
    if number>=97 && number<=100
        grade = "(4.0) A+";
    elseif number>=93 && number<=96
        grade = "(4.0) A";
    elseif number>=90 && number<=92
        grade = "(3.7) A-";
    elseif number>=87 && number<=89
        grade = "(3.3) B+";
    elseif number>=83 && number<=86
        grade = "(3.0) B";
    elseif number>=80 && number<=82
        grade = "(2.7) B-";
    elseif number>=77 && number<=79
        grade = "(2.3) C+";
    elseif number>=73 && number<=76
        grade = "(2.0) C";
    elseif number>=70 && number<=72
        grade = "(1.7) C-";
    elseif number>=67 && number<=69
        grade = "(1.3) D+";
    elseif number>=65 && number<=66
        grade = "(1.0) D";
    elseif number<65
        grade = "(0.0) E/F";
    end
else 
    fprintf('Error: Please only enter numbers between 0-20\n')
end


if grade ~= ""
   fprintf('Grade in GPA: %s \n',grade);
end
