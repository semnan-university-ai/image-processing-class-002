clc;
close all;
clear;

A=rgb2gray(imread('monarch.png'));
[x,y]=size(A);

x1 = randi([0 x],1,1);
x2=randi([0 y],1,1);

for i=x1:(x1+50)-1
        for j=x2:(x2+50)-1
            A(i,j)=255;
        end
end

imshow(A);

