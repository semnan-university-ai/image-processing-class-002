clc;
close all;
clear;


for n=1:12
    img=rgb2gray(imread(strcat('./',int2str(n),'.jpg')));
    k=fspecial('average',[7 7]);
    mean_filter=imfilter(img,k);
    figure(1);
    subplot(3,4,n),imshow(img),title(n);
    figure(2);
    subplot(3,4,n),imshow(mean_filter),title(n);
end
