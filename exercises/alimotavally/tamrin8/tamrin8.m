clc;
clear;
close all;
for i = 1:1000
    for j = 1:1000
        img_rand(i,j) = randi(255);
    end
end
im = mat2gray(img_rand);
figure,imshow(im);