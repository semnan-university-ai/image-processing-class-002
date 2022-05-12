clc;
clear all;
close all;

img = imread('./inputImage.jpg');
img =rgb2gray(img);

[i,j]=size(img);

for i = 1: i
    for j = 1: j
        img(i,j) = img(i,j) + 50;
    end
end

imshow(img);