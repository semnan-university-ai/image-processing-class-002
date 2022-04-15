clc; 
close all;
clear;
image1=imread('sails.png');
image2=rgb2gray(image1);
figure,imshow(image2);
[m,n]=size(image2);
image3=zeros(m+2,n+2);
image3(2:end-1,2:end-1)=image2;
image3(1,2:end-1)=image2(1,1:end);
image3(end,2:end-1)=image2(end,1:end);
image3(2:end-1,1)=image2(1:end,1);
image3(2:end-1,end)=image2(1:end,end);
figure, imshow(uint8 (image3));






