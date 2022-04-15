clc;
close all;
clear;

A=rgb2gray(imread('monarch.png'));
 [x,y]=size(A);

%B=zeros(x,y);
for i=2:x-1
    for j=2:y-1
        B(i,j)=sqrt(double(A(i-1,j)))+sqrt(double(A(i+1,j)))+sqrt(double(A(i,j-1)))+sqrt(double(A(i,j+1)));
    end
end
imshow(uint8(B));



