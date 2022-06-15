clear;
close all;
clc;

IMG1 = imread('The-original-cameraman-image_W640.jpg');

W_Squar = 50;

[I1,J1] = size(IMG1);

I_Point = randperm(I1-W_Squar,1);

J_Point = randperm(J1-W_Squar,1);

IMG1(I_Point:I_Point+W_Squar,J_Point:J_Point+W_Squar) = 255;

figure,imshow(IMG1);

