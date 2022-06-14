clc;
clear;
close all;

img = rgb2gray(imread('rice2.png'));

BW = imbinarize(img);
% Get the number of connected components
CC = bwconncomp(BW);
N = CC.NumObjects;

figure, imshow(img),title(['number of rice', num2str(N)]);