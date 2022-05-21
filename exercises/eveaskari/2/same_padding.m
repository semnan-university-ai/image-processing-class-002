clc;
close all;
clear;

img = imread("MATLAB/monarch.png");
img = rgb2gray(img);
img = imresize(img, [300 400]);

figure, imshow(img);

img_siz = size(img);

padd = padarray(img,[1 1],'replicate','both');

figure, imshow(padd);