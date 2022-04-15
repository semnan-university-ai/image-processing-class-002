clc ;clear; close all 
img = imread('fruits.png');
img=rgb2gray(img);
[m n]=size(img)
for i=1:m/2
    for j=1:n
        img(i,j)=255-img(i,j);
    end 
end 
imshow(img)