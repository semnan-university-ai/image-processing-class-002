clc;
close all;
clear;

A=rgb2gray(imread('monarch.png'));

[x,y]=size(A);

for i=1:x/2
    for j=1:y-1
        A(i,j)=255-A(i,j);
    end
end
imshow(A);



