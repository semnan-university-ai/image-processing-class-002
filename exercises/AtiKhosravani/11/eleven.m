clc;
clear;
close all;
img = imread('onion.png');
R =10;
img=rgb2gray(img);
figure,imshow(img);
x = size(img,2)/2;
y = size(img,1)/2;
hold on
Theta = 0:0.01:2*pi;
x1 = x + cos(Theta)' * R;
y1 = y + sin(Theta)' * R;
plot(x,y,'g','LineWidth',5)