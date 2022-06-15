clc;
close all;
clear;

img1 = imread("fr.jpg");
img1 = imresize(img1, [100 200]);

img2 = rgb2hsv(img1);

imshow(img2);