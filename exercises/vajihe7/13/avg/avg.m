clc;
clear all;
close all;

window_size = 7;
padding = (window_size - 1)/2;
image1 = imread('a.png');
image1 = rgb2gray(image1);
image2 = image1;
[x, y]=size(image1);

for i=1+padding:x-padding
    for j=1+padding:y-padding
        m = image1(i-padding:i+padding, j-padding:j+padding);
        m = sort(m(:));
        image2(i,j)= m((end-1)/2);
    end
end
figure;
subplot(1,2,1);imshow(image1);title('image asr');
subplot(1,2,2);imshow(image2);title('average_ image');