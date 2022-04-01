clc;
clear all;
close all;

a=100;
pic0=imread("photo_2022-03-30_21-00-33.jpg");
figure(1);
imshow(pic0);
q=wightSQ(pic0,a);
figure(2);
imshow(q);
