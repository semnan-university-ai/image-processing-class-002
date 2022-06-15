clc;
close all;
clear;

img1 = rgb2gray(imread('MATLAB/cameraman.png'));
img2 = rgb2gray(imread('MATLAB/fruits.png'));
figure, subplot(1,2,1); imshow(img1);
subplot(1,2,2); imshow(img2);

[x ,y] = size(img1);
[w ,z] = size(img2);
g = w-199;
f = z-199;

img1 = img1(1:200 , 1:200 , :);
img2 = img2(g:w , f:z , :);

img1 = double(img1);
img2 = double(img2);

subtr = imsubtract(img1,img2);
figure, imshow(uint8(subtr));
