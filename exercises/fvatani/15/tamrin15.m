clc;
clear all;
close all;

image= imread('pears.png');
gray_image = uint8(zeros(size(image,1),size(image,2)));

for i=1 : size(image,1)
    for j=1 : size(image,2)
         R = image(i,j,1);
         G = image(i,j,2);
         B = image(i,j,3);
         gray_image(i,j)=(R*0.299)+(G*0.587)+(B*0.114);
         R=0;G=0;B=0;
    end
end

figure, imshow(gray_image);
