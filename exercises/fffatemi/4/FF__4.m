close all;
clear;
clc;

IMG1 = imread('How-to-store-fruit-to-keep-it-fresh-resized.jpg');
IMG11 = rgb2gray(IMG1);
[V1,H1] = size (IMG11);
figure; imshow(IMG11);
IMG2 = IMG11;

for i = 1 : V1/2
    for j = 1 : H1
        IMG2(i,j) = 255 - IMG11(i,j);
    end
end
figure; imshow(IMG2);
