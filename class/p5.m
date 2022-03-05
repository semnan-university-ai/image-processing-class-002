clc;
close all;
clear;

image1 = imread("fr.jpg");
image1 = rgb2gray(image1);
image1 = imresize(image1, [300 600]);
image_size = size(image1);

figure, imshow(image1);

for i = 1 : image_size(1, 1)
    for j = 1 : image_size(1, 2)
        image1(i, j) = 255 - image1(i,j);
    end
end

figure, imshow(image1);

for i = 1 : image_size(1, 1)
    for j = 1 : image_size(1, 2)
        image1(i, j) = 255 - image1(i,j);
    end
end

figure, imshow(image1);