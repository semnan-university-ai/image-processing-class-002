close all;
clear;
clc;

IMG1 = imread('How-to-store-fruit-to-keep-it-fresh-resized.jpg');

figure , imshow(IMG1)

[I,J] = size(IMG1);

R = IMG1(:,:,1);

G = IMG1(:,:,2);

B = IMG1(:,:,3);

Gray_Img = R*0.299 + G*0.587 + B*0.144;

figure,imshow(Gray_Img);

