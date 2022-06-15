clc;
close all;
clear;

img1 = imread('pool.png');
imgsiz = size(img1);
x = imgsiz(1,1);
y = imgsiz(1,2);
result=zeros(x,y);
for i=1:x
    for j=1:y
       img2(i,j) = (img1(i,j,1)*0.299 + img1(i,j,2)*0.577 + img1(i,j,3)*0.144);
    end
end

figure, imshowpair(img1,img2,'montage');