
clc;
clear;
close all;

img=imread('peppers.png');
imshow(img);
a=size(img)
axis on;
hold on;
impixelinfo(); % Show x, y, RGB as you mouse around over image.
xLeft = randi(462)  % integer random number between 1 and (512-50); .
yTop= randi(462)
rectangle('Position', [xLeft, yTop, 50, 50], 'EdgeColor', 'w', 'LineWidth', 2);
