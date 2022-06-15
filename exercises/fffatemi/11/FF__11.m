close all;
clear;
clc;

IMG1 = imread('The-original-cameraman-image_W640.jpg');

[I,J]=size(IMG1);

IMG2 = zeros(I,J);

R=40;

for i=1:I
    for j=1:J
        IMG2(i,j)=sqrt((i-I/2)^2+(j-J/2)^2);
        if IMG2(i,j) <= R
            IMG1(i,j)=255;
        end
    end
end

figure , imshow(IMG1);