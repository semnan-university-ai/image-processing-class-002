clc;
close all;
clear;

image1 = imread("../benchmark/airplane.png");
image1 = rgb2gray(image1);
image_size = size(image1);

sum = 0;
avg = 0;

figure, imshow(image1);

for i = 1 : image_size(1, 1)
    for j = 1 : image_size(1, 2)
           
        
        sum = unit16(image_size(i, j)) + ...
            unit16(image_size(i+1, j-1)) + unit16(image_size(i+1, j+1)) + unit16(image_size(i+1, j)) + ...
            unit16(image_size(i-1, j-1)) + unit16(image_size(i-1, j)) + ...
            unit16(image_size(i-1, j+1)) + unit16(image_size(i, j+1)) + ...
            unit16(image_size(i, j-1));
        
        sum = uint8(sum / 9);
        
        image1(i,j) = uint8(sum);
        
        sum = 0;
        avg = 0;
    end
end

figure, imshow(uint8(image1));