close all;
clear;
clc;

IMG1 = imread('The-original-cameraman-image_W640.jpg');
[V1,H1] = size (IMG1);
figure; imshow(IMG1);
IMG2 = IMG1;

for i = 1 : V1
    for j = 1 : H1
        IMG2(i,j) = 50 + IMG1(i,j);
    end
end
figure; imshow(IMG2);