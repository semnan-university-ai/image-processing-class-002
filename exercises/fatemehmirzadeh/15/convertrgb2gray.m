clear;close all;clc;
img= imread('fruits.png');
size=size(img);
x = size(1,1);
y = size(1,2);
result=zeros(x,y);
for i=1 : x
    for j=1 : y 
      result(i,j)=(img(i,j,1))*(0.299)+...
       (img(i,j,2))*(0.587)+ (img(i,j,3))*(0.114);       
    end
end
subplot(1,2,1),imshow(uint8(img)),title('rgb image');
subplot(1,2,2),imshow(uint8(result)),title('result img');
