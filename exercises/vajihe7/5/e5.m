clc;
close all;
clear;

image = imread('fruits.png');
img_gry = rgb2gray(image);
subplot(211);imshow(img_gry);title('Image 1')

[x y] = size(img_gry);
for i = 1 : x %row
    for j = 1 : y %column
        img_gry(i,j) = img_gry(i,j) + 50; 
    end
end
subplot(212); imshow(img_gry);title("Image 2")
