clc;
close all;
clear;

A=rgb2gray(imread('monarch.png')); imshow(A); title("Circle image")
[m,n]=size(A);
drawcircle('Center',[n,m]/2+0.5,'Radius',length(A)/4)