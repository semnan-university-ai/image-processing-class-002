clc;
close all;
clear;

img = imread('/Users/s.ali.motavally/Desktop/tamrin2/imaget2.jpg');
img = rgb2gray(img);
img = imresize(img, [450 550]);

figure, imshow(img);

img_siz = size(img);

padim = padarray(img,[10 10],'replicate','both');

figure, imshow(padim);