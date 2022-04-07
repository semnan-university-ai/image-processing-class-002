clc;
clear;
close all;
img = imread('fruits.png');
img=rgb2gray(img); 
imshow(img)
[r h]=size(img);
drawcircle('Center',[r h]/2,'Radius',length(img)/10);

