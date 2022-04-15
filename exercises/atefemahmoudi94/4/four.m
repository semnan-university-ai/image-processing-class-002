clc;
clear;
close all;
img = imread("monarch.png");
gray_img = rgb2gray(img);
[x y] = size(gray_img);
for i = 1 : x/2
    for j = 1 : y
        gray_img(i,j) = 255 - gray_img(i,j) ;   
    end
end
