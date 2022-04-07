clc;
clear;
close all;
img1=imread('peppers.png');
img2= img1;
[row,column,dim]=size(img1);

for i=1:(row/2)
    for j=1: column
        for k=1:dim
        img2(i,j,k)= 255-img1(i,j,k);
        end
    end
end

figure , imshow(img1);
title('orginal image');
figure , imshow(img2);
title('half negative image');