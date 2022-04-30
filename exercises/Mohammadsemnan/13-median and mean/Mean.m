clc;
clear;
close all;


A=imread('1.jpg');
A=rgb2gray(A);
h=fspecial('average',[7 7]);
filtered=imfilter(A,h);
imwrite(filtered, "1mean.jpg");