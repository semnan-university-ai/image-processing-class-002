clc;
clear;
close all;
src_img = imread('flower.png') ;
src_img = rgb2gray(src_img) ;
[x y] = size(src_img);
sqrt_img = double(src_img);
for i = 2: x-1
    for j = 2: y-1
       sqrt_img(i,j)= sqrt(double(src_img(i+1,j)))+sqrt(double(src_img(i,j-1)))+sqrt(double(src_img(i,j+1)))+sqrt(double(src_img(i-1,j)));     
    end
end
figure, imshow(uint8(src_img));
figure, imshow(uint8(sqrt_img));

