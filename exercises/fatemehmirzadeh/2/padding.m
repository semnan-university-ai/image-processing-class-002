clc;close all;clear;
img = imread('baboon.png');
img = rgb2gray(img);
figure, imshow(img);
img_size = size(img);
pad1 = padarray(img,[5 5],'replicate','both');
figure, imshow(pad1);