close all;
clear;
clc;

IMG1 = imread('How-to-store-fruit-to-keep-it-fresh-resized.jpg');
IMG2 = im2gray (IMG1);
figure; imshow(IMG2);
IMG3 = imresize (IMG2,[555,832]);
figure ; imshow(IMG3);
[x,y] = size (IMG3);
for i = 1:x
    for j = 1:y
        IMG3(1,j)= IMG3(2,j);
        IMG3(i,1)= IMG3(i,2);
        IMG3(x,j)= IMG3(x-1,j);
        IMG3(i,y)= IMG3(i,y-1);
    end
end
figure ; imshow(IMG3);