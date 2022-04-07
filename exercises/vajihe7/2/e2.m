clc;
close all;
clear;

img1 = imread('fruits.png');
img_gry = rgb2gray(img1);
[x y] = size(img_gry);

p_size = floor(4/2);
subplot(211);imshow(img_gry);title(' Image Asli');

for i = 1 : x
    for j = 1 : y
      pad_img = padarray(img_gry,[p_size p_size],'both','replicate');     
    end
end

subplot(212);imshow(pad_img);title(' Image padding');