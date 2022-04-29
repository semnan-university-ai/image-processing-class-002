clc;close all;clear;
%median filter
for n=1:12
    i=imread(strcat('D:\7\',int2str(n),'.jpg'));
    i=rgb2gray(i);
    salt_noise_img=imnoise(i,'salt & pepper',0.2);
    N=medfilt2(salt_noise_img,[7 7]);
    figure(1);
    subplot(3,4,n),imshow(i),title(n);
    figure(2);
    subplot(3,4,n),imshow(salt_noise_img),title(n);
    figure(3);
    subplot(3,4,n),imshow(N),title(n);
end
    