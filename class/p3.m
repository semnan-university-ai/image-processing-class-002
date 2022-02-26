clc;
close all;
clear;


img1 = imread("fruits.png");
img1 = imresize(img1, [100 100]);

im2 = imread("barbara.png");


%imshow(img1);
imshow(im2);