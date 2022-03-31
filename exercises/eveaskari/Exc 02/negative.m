clc;
close all;
clear;


img1 = imread("MATLAB/fruits.png");
img1 = rgb2gray(img1);
img1 = imresize(img1, [300 300]);

figure, imshow(img1);
%figure, imshow(img2);

img_siz = size(img1);

for i = 1: img_siz(1,1)
    for j = 1: img_siz(1,2)
        img1(i,j) = 255 - img1(i,j);
    end
end

figure, imshow(img1);

for i = 1: img_siz(1,1)
    for j = 1: img_siz(1,2)
        img1(i,j) = 255 - img1(i,j);
    end
end

figure, imshow(img1);