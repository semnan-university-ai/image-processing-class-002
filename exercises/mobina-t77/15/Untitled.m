
clc;
clear;
close all;


img1= imread("peppers.png");

size_img1=size(img1);
% [row , column]=size(img1);
row = size_img1(1,1);
column = size_img1(1,2);
img4=zeros(row,column);

for i=1 : row
    for j=1 : column 
         img4(i,j) = (img1(i,j,1))*(0.299) + (img1(i,j,2))*(0.587) + (img1(i,j,3))*(0.114);       
    end
end

figure,imshow(img1);title('orginal image')
figure, imshow(uint8(img4));title('third method - image')