clc;
close all;
clear;

image = imread("histogram.jpg");
figure, imhist(image);
%figure, imshow(histeq(image));
%image = histeq(image);
%figure, imhist(image)
%figure, imshow( histeq(histeq(image)) );