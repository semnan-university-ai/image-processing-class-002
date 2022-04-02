clc;
close all;
clear;

img = imread("MATLAB/girl.png");
img = rgb2gray(img);
imshow(img);
[m,n] = size(img);

drawcircle('Center',[n,m]/2+0.5,'Radius',length(img)/4);