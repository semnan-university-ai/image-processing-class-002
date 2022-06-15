clc;
close all;
clear;
pkg load image;


for n=1:12
    img=rgb2gray(imread(strcat('./',int2str(n+8),'.jpg')));
    noise_img=imnoise(img,'salt & pepper',0.2);
    filter2=medfilt2(noise_img,[7 7]);
    figure(1);
    subplot(3,4,n),imshow(img),title(n);
    figure(2);
    subplot(3,4,n),imshow(noise_img),title(n);
    figure(3);
    subplot(3,4,n),imshow(filter2),title(n);
end

