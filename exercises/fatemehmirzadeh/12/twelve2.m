clc;close all;clear;
for n=1:12
    i=imread(strcat('D:\7\',int2str(n),'.jpg'));
    i=rgb2gray(i);
    subplot(6,6,n*3-2),imshow(i),title(n);
    subplot(6,6,n*3-1),imhist(i);
    subplot(6,6,n*3),imhist(histeq(i));
end