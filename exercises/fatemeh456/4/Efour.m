clc;
clear;
close all;
img = imread('Cat.jfif');
gray_img = rgb2gray(img);
[x y] = size(gray_img);
for i = 1 : x/2
    for j = 1 : y
        gray_img(i,j) = 255 - gray_img(i,j) ;   
    end
end
subplot(221);imshow(img);title('Source Image');
subplot(222);imshow(gray_img);title("Negative");
imwrite(gray_img,'MyImage.png')
