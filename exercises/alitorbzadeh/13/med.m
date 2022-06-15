clc;
close all;
clear;

for n=1:10
    img=imread(strcat('D:\7\',int2str(n),'.jpeg'));
    img=rgb2gray(img);
    noise_img=imnoise(img,'salt & pepper',0.4);
    filter=medfilt2(noise_img,[7 7]);
    figure(1);
    subplot(4,3,n),imshow(img),title('gray img');
    figure(2);
    subplot(4,3,n),imshow(noise_img),title('noise img');
    figure(3);
    subplot(4,3,n),imshow(filter),title('filter img');
end
    
