clear;
close all;
clc;
% ................................

for i=1 : 17
    imgi= imread(".\asset\eyd\haftsin\sofre ("+i+").jpeg");
    imgiGray= rgb2gray(imgi);
    imgiH=histeq(imgiGray);
    arr =[imgiGray ,imgiH ];
    montage(arr);
end


 