clc;close all;clear;
%mean filter
for n=1:12
    i=imread(strcat('D:\7\',int2str(n),'.jpg'));
    i=rgb2gray(i);
    h=fspecial('average',[7 7]);
    filtered=imfilter(i,h);
    figure(1);
    subplot(3,4,n),imshow(i),title(n);
    figure(2);
    subplot(3,4,n),imshow(filtered),title(n);
end


