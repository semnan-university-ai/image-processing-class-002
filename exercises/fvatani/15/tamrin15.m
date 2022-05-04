clc;
clear all;
close all;

img= imread('pears.png');
gray_image = uint8(zeros(size(img,1),size(img,2)));

for i=1 : size(img,1)
    for j=1 : size(img,2)
         R = img(i,j,1);
         G = img(i,j,2);
         B = img(i,j,3);
         gray_image(i,j)=(R*0.299)+(G*0.587)+(B*0.114);
         R=0;G=0;B=0;
    end
end

figure, imshow(gray_image);
