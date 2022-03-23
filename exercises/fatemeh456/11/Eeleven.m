clc;
clear;
close all;
img = imread('airplane.png');
gray_img=rgb2gray(img); 
imshow(gray_img)
[x y]=size(gray_img);
drawcircle('Center',[x y]/2,'Radius',x/8);

