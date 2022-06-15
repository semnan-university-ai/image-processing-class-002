clc;
close all;
clear all;

img1=imread("airplane.png");
subplot(1,2,1);
imshow(img1);
title("input")

row=size(img1,1);
col=size(img1,2);
dim=size(img1,3);
img2=zeros(row,col,dim);

for i=1:row
    for j=1:col
        for k=1:dim
            img2(i,j,k)= .299*img1(i,j,1)+.577*img1(i,j,2)+.144*img1(i,j,3);
        end
    end
end

img2=uint8(img2);
subplot(1,2,2);
imshow(img2)
title("output")