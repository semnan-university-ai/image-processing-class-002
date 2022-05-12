clc;
close all;
clear;

img = imread("./inputImage.jpg");
img = rgb2gray(img);
[i,j] = size(img);
x = j/2;
y = i/2;
imshow(img); 

r = 70;
hold on;
theta = 0 : (2 * pi / 10000) : (2 * pi);
axis_x = r * cos(theta) + x;
axis_y = r * sin(theta) + y;
k = ishold;
plot(axis_x, axis_y, 'r-', 'LineWidth', 5);
hold off;