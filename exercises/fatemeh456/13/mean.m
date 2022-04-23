clc;
clear all;
close all;
window_size = 7
pad = (window_size - 1)/2;
image = imread('1.jpg');
image = rgb2gray(image);
Result_image = image;
[x y]=size(image);

for i=1+pad:x-pad
    for j=1+pad:y-pad
        mat = image(i-pad:i+pad, j-pad:j+pad);
        mat = sum(mat(:));
        Result_image(i,j)= ceil(mat/49);
    end
end
imshow(Result_image)

