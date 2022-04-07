clc;
clear;
close all;
img1=imread('peppers.png');
img2= img1;
[m,n,w]=size(img1);

for i=1:m
    for j=1: n
        for k=1:w
        img2(i,j,k)= img1(i,j,k)+ img1(i,j,k)* (50/100);
        end
    end
end

figure , imshow(img1);
title('orginal image');
figure , imshow(img2);
title('lighter image');