close all;
clear;
clc;

IMG1 = imread('The-original-cameraman-image_W640.jpg');

subplot(1,2,1) , imshow(IMG1) , title('Original image')

[I,J] = size(IMG1);

IMG1_CenterPoint = [round(I/2),round(J/2)];

IMG1_WindowSize = input('Please enter your new image size : ');

R = floor(IMG1_WindowSize(1,1)/2);

C = floor(IMG1_WindowSize(1,2)/2);

IMG2 = IMG1(IMG1_CenterPoint(1)-R:IMG1_CenterPoint(1)+R,...
            IMG1_CenterPoint(2)-C:IMG1_CenterPoint(2)+C);

subplot(1,2,2) , imshow(IMG2) , title('Crop image')
