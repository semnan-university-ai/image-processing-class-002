clc;
clear;
close all;
im=imread('lena.png');
im=rgb2gray(im);
%up bourder 
for i=1:size(im,1)
    j=1:size(im,2);
pad(i+1,j)=im(i,j);
pad(1,:)=im(1,:);
end
%down bourder
pad(514,:)=pad(513,:);
%left bourder
for i=1:size(im,1)
    j=1:size(im,2);
   pad(i,j+1)=pad(i,j); 
end
%right bourder
pad(:,514)=pad(:,end);
imshow(pad)
