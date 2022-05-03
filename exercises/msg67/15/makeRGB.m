clear;
close all;
clc;
%........................

img= imread("benchmark/cat.png");

size=size(img);
sizeWidth = size(1,1);
sizeHeight = size(1,2);
result=zeros(sizeWidth,sizeHeight);

resultImg=uint16(result);

figure,imshow(uint8(img)),hold on

for i=1 : sizeWidth
    for j=1 : sizeHeight 
         resultImg(i,j)=(img(i,j,1))*(0.299)+...
             (img(i,j,2))*(0.587)+ (img(i,j,3))*(0.114);       
    end
end


figure, imshow(uint8(resultImg));

