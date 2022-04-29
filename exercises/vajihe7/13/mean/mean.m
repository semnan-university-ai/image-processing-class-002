clc;
clear all;
close all;

window_size = 7;
padding = (window_size - 1)/2;
image1 = imread('sh.png');
image1 = rgb2gray(image1);
image2 = image1;
[x, y]=size(image1);

for i=1+padding:x-padding
    for j=1+padding:y-padding
        m = image1(i-padding:i+padding, j-padding:j+padding);
        m = sum(m(:));
        image2(i,j)= ceil(m/49);
    end
end
figure;
subplot(1,2,1);imshow(image1);title('image shab');
subplot(1,2,2);imshow(image2);title('mean_ image');