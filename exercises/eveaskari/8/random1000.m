clc;
close all;
clear;

img = zeros(1000, 1000);
img(1:1000, 1:1000) = rand(1000, 1000);
imshow(img);
%we can use this too
img1 = randi(255,1000,1000);
img0 = uint8(img1);
imshow(img0, []);