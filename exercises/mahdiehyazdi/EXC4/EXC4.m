clc; 
clear all;
close all;

img = imread('./inputImage4.jpg');
img =rgb2gray(img);
imshow(img);

[k,l]=size(img);
k=k/2;

for i=1:k
    for j=1:l
        img(i,j)=255-img(i,j);
    end 
end 

imshow(img);