clc;
clear;
close all;
src_img = imread('fruit.jfif');
gray_img = rgb2gray(src_img);
figure,imshow(gray_img);title('Before')
[x y] = size(gray_img);
for i = 1 : x
    for j = 1 : y
        gray_img(i,j) = gray_img(i,j) + 50; 
    end
end
figure, imshow(gray_img);title("After")
imwrite(gray_img,'MyImage.png')
