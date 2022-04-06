clc;
close all;
clear;

img = imread("./monarch.jpg");
img = rgb2gray(img);

img_pad = padarray(img,1,'replicate','both');
imshow(img_pad);


