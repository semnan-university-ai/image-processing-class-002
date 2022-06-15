clc;
close all;
clear;
image1= imread('airplane.png');
image2=rgb2gray(image1);
figure,imshow(image2);
[m,n]=size(image2);
for i=1:m
    for j=1:n
        if i < m/2
            image3(i,j) =255-image2(i,j);
        else
            image3(i,j)= image2(i,j);
        end
    end
end
figure,imshow(image3);

