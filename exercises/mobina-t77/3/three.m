
clc;
clear;
close all;
img=imread('peppers.png');
imshow(img);

axis on;
hold on;
impixelinfo(); % Show x, y, RGB as you mouse around over image.
xLeft = randi(255)  % integer random number between 1 and 255; % Wherever you want.
yTop = randi(255)
rectangle('Position', [xLeft, yTop, 50, 50], 'EdgeColor', 'w', 'LineWidth', 2);
