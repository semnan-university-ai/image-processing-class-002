clc 
clear all 
close all 
pic = imread('onion.png');
pic =rgb2gray(pic);
npic = padarray(pic,1,'replicate','both');
imshow(npic)