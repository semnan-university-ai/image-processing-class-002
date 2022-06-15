clc;
clear;
close all;

orimg = imread("Fruits.jpg");

imgSize = size(orimg);
x = imgSize(1,1);
y = imgSize(1,2);
img = zeros(x,y);

for i=1 : x
    for j=1 : y 
         img(i,j) = (orimg(i,j,1))*(0.299) + (orimg(i,j,2))*(0.587) + (orimg(i,j,3))*(0.114);       
    end
end

figure;
subplot(1,2,1);imshow(orimg);title('Original Image');
subplot(1,2,2);imshow(uint8(img));title('Resault Image');