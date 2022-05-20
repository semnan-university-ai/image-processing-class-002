clc;
clear;
close all;
img = imread('Fruit.jpg');
crop_img(img,10,110,60,180)
function crop = crop_img(img,xmin,ymin,xmax,ymax)
crop = img(xmin:xmax, ymin:ymax, :);
figure;
subplot(1,2,1), imshow(img), title('image');
subplot(1,2,2), imshow(crop), title('crop');
end