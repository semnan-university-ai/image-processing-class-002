close all;
clear;
clc;

New = '';
Num_Name = input('What is the Course Name?', 's' );
Num = input('What is your grade in that class?');

if  Num <= 20 && Num >= 0
    Num = Num * 5;

    if  Num >= 90
        New = 'A';
    elseif Num >= 80
        New = 'B';
    elseif Num >= 70
        New = 'C';
    elseif Num >= 60
        New = 'D';
    else
        New = 'F';
    end
    X = [' Your ' ,Num_Name,' Grade is ',New];
    disp(X)
else
    disp('Your Input is Invalid')

end


