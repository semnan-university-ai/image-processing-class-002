clc;
clear;
close all;
image1=imread('lena.png');
image2=rgb2gray(image1);
image_siz = size(image2);
Width = size(1,1);
Height = size(1,2);
figure, imshow(image2);

image3= zeros(Width,Height);
image3 = double(image2);
figure, imshow(uint8(image3));

for i=2 : Width-1
    for j=2 : Height-1
       image3(i,j)= sqrt(double(image2(i,j-1)))+ sqrt(double(image2(i,j+1)))...
            +sqrt(double(image2(i-1,j)))+sqrt(double(image2(i+1,j))); 
   end
end  

figure, imshow(uint8(image3));