clc;
clear all;
close all;

image=imread('pears.png');
output=crop_image(150,100,350,600,image);
figure,imshow(image);
figure,imshow(output);
