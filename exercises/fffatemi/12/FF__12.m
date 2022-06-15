close all;
clear;
clc;

IMG1 = rgb2gray(imread('Haftsin.jpeg'));

IMG11 = double(IMG1);

figure
subplot(1,2,1)
imshow(IMG1)
subplot(1,2,2)
imhist(IMG1)

IMG2 = histeq(IMG1);

figure
subplot(1,2,1)
imshow(IMG2)
subplot(1,2,2)
imhist(IMG2)

