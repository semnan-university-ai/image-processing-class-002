clc;
close all;
clear;
image = imread('8.jpg');
image1 = rgb2gray(image);
[a,b] = size(image1);
image2 = zeros(a+6,b+6);
image2(4:end-3,4:end-3) = image1;
[m,n] = size(image2);
image3 = zeros(size(image1));

for i = 4 : m-3
    for j = 4 : n-3
        g = image2(i-3:i+3,j-3:j+3);
        c = median(g(:));
        image3(i-3,j-3)= c;
    end
end

figure;
subplot(1,2,1),imshow(uint8 (image2));title ('padding image');
subplot(1,2,2),imshow(uint8 (image3));title('median filter');

