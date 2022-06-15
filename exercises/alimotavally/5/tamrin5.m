clc;
clear;
close all;

im = imread('/Users/s.ali.motavally/Desktop/tamrin5/imaget2.jpg');
img = imresize(im, [450 550]);
gray_img =rgb2gray(img);
figure, imshow(gray_img);
[x,y] = size(gray_img);
for i = 1:x
    for j = 1:y
        gray_img(i,j) = gray_img(i,j)+50;
    end
end

figure, imshow(gray_img);