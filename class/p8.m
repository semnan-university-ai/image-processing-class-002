clc;
close all;
clear;

image = imread('image.jpg');
image = imnoise(image,'salt & pepper');
figure, imshow(image);
image_size = size(image);
figure, imshow(median(image, image_size(1, 1), image_size(1, 2)));