clc ;clear; close all 
img = imread('cat.png');
img =rgb2gray(img);

img_size=img;
size=size(img);
m = size(1,1);
n = size(1,2);

for i=1:m/2
    for j=1:n
        img_size(i,j)=255-img(i,j);
    end 
end 
imshow(img_size)