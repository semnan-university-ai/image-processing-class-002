clc;
clear;
close all;

img = imread('./inputImage3.jpg') ;
img = rgb2gray(img) ;
figure, imshow(uint8(img));

[k,l]=size(img);
img_sqr = double(img);
for i = 2: k-1
    for j = 2: l-1
       img_sqr(i,j)= sqrt(img_sqr(i+1,j))+sqrt(img_sqr(i-1,j))+sqrt(img_sqr(i,j-1))+sqrt(img_sqr(i,j+1));     
    end
end
figure, imshow(uint8(img));