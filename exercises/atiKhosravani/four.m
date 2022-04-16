clc;
clear;
close all;
image1=imread('onion.png');
image2=rgb2gray(image1);
image3=imresize(image2, [300 500]);
image_siz = size(image3);
figure, imshow(image3);

for i = 1: image_siz(1,1)/2
    for j = 1: image_siz(1,2)
        image(i,j) = 255 - image3(i,j);
    end
end
figure, imshow(image);