clc;clear;close all;
img = imread('boat.png');
[m n] = size(img);
sqrt_img = double(img);
for i = 2: m-1
    for j = 2: n-1
       sqrt_img(i,j)= sqrt(double(img(i+1,j)))+sqrt(double(img(i,j-1)))+sqrt(double(img(i,j+1)))+sqrt(double(img(i-1,j)));     
    end
end
figure, imshow(uint8(img));
figure, imshow(uint8(sqrt_img));
