clc;
close all;
clear;

new_x_value = 256;
new_y_value = 512;
img1 = imread("fr.jpg");


img1 = imresize(img1, [new_x_value new_y_value]);
figure, imshow(img1);

img2 = rgb2gray(img1);

figure, imshow(img2);