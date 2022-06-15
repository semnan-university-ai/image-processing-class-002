clc;
close all;
clear;
image1=imread('peppers.png');
image2=rgb2gray(image1);
figure,imshow(image2);
[m,n]=size(image2);
for i= 1:m
    for j=1:n
        image3(i,j)=image2(i,j)+50;
    end
end
figure,imshow(image3);