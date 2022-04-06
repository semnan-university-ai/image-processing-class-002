clc;clear;close all;
img = imread('cat.png');
img_gray = rgb2gray(img);
imshow(img_gray);
title('asli')
[m n] = size(img_gray);
for i = 1 : m
    for j = 1 : n
        img_gray(i,j) = img_gray(i,j) + 50; 
    end
end
subplot (1,2,1)
imshow(img_gray)
title (' asli ')
subplot (1,2,2)
imshow(img_gray)
title (' brighten ')


