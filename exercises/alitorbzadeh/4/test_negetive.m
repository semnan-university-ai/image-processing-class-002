clc;
clear all;
close all;

pic0=imread("photo_2022-03-30_21-00-33.jpg");
figure(1);
imshow(pic0);
q=negetive(pic0);
figure(2);
imshow(q);