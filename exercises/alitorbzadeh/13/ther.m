clc;
close all;
clear;

for n=1:10
    img=imread(strcat('D:\7\',int2str(n),'.jpeg'));
    img=rgb2gray(img);
    a=fspecial('average',[7 7]);
    filter=imfilter(img,a);
    figure(1);
    subplot(3,4,n),imshow(img),title('gray image');
    figure(2);
    subplot(3,4,n),imshow(filter),title('filter image');
end


