clc;
close all;
clear;

img = imread("./inputImage.jpg");
img = rgb2gray(img);

img_pad = padarray(img,1,'replicate','both');
imshow(img_pad);


