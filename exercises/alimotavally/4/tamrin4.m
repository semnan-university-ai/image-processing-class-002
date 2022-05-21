clc;
close all;
clear;

im = imread('/Users/s.ali.motavally/Desktop/tamrin4/imaget2.jpg');
img = imresize(im, [450 550]);
gray_img =rgb2gray(img);
[x, y] = size(gray_img);
for i = 1 : x/2
    for j = 1 : y
        gray_img(i,j) = 255 - gray_img(i,j) ;   
    end
end

imshow(gray_img)