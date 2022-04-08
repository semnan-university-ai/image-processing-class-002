clc;
clear;
close all;
image1=imread('lena.png');
image2=rgb2gray(image1);
image_siz = size(image2);
figure, imshow(image2);

for i = 1: image_siz(1,1)
    for j = 1: image_siz(1,2)
        image(i,j) = image2(i,j) + 50;
      
    end
end

figure, imshow(image);