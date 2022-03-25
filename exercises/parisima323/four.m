clc 
clear all 
close all 
pic = imread('onion.png');
pic =rgb2gray(pic);
[m,n]=size(pic);
npic=pic;
m=m/2;
for i=1:m
    for j=1:n
        npic(i,j)=255-pic(i,j);
    end 
end 
imshow(npic)