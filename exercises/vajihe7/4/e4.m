clc;
close all;
clear;

image = imread('girl.png');
img_gry = rgb2gray(image);
subplot(211);imshow(image);title('Image Asli');
[r c] = size(img_gry);
for i = 1 : r/2
    for j = 1 : c
        img_gry(i,j) = 255 - img_gry(i,j) ;   
    end
end

subplot(212);imshow(img_gry);title("Image Negative");
