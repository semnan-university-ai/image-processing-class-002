clc;
close all;
clear;

image = imread('image.jpg');
image = imnoise(image,'salt & pepper', 0.001);
figure, imshow(image);