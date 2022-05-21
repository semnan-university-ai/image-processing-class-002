clc;
close all;
clear;

img = imread('/Users/s.ali.motavally/Desktop/tamrin11/lena.png');
img = rgb2gray(img);
imshow(img);
[a,b] = size(img);

drawcircle('Center',[a,b]/2+0.5,'Radius',a/4);