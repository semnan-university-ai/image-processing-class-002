clc;
clear;
close all;

img = imread('/Users/s.ali.motavally/Desktop/tamrin6/imaget2.jpg');
img = rgb2gray(img) ;
img = imresize(img, [450 550]);
figure, imshow(uint8(img));

[x,y]=size(img);
sqr_img = double(img);
for i = 2: x-1
    for j = 2: y-1
       sqr_img(i,j)= sqrt(sqr_img(i+1,j))+sqrt(sqr_img(i-1,j))+sqrt(sqr_img(i,j-1))+sqrt(sqr_img(i,j+1));     
    end
end
figure, imshow(uint8(sqr_img));
