clear;
close all;
clc;
img = imread('monarch.png');
img = rgb2gray(img);
R = 100;
imshow(img)
x0 = size(img,2)/2;
y0 = size(img,1)/2;
hold on
axis on
Theta = 0:0.01:2*pi;
x = x0 + cos(Theta)' * R;
y = y0 + sin(Theta)' * R;
plot(x0,y0,'b*')
plot(x,y,'r','MarkerSize', 1, 'LineWidth', 2)