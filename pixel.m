clc;
close all;
clear;

img1 = imread("MATLAB/pool.png");
img1 = rgb2gray(img1);
img1 = imresize(img1, [300 300]);

figure, imshow(img1);

img_siz = size(img1);

for i = 1: img_siz(1,1)
    for j = 1: img_siz(1,2)
        img1(i,j) = img1(i,j) + 50;
    end
end

figure, imshow(img1);

