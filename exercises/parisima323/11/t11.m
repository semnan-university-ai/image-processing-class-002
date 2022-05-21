clc;
clear;
close all;
img = imread('onion.png');
R = 50;
img=rgb2gray(img);
figure,imshow(img);
x0 = size(img,2)/2;
y0 = size(img,1)/2;
hold on
axis on
Theta = 0:0.01:2*pi;
x = x0 + cos(Theta)' * R;
y = y0 + sin(Theta)' * R;
plot(x0,y0,'r*')
plot(x,y,'r','LineWidth',3)