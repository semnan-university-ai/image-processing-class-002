clc;
close all;
clear;
image1=imread('fruits.png');
image2=rgb2gray(image1);
imshow(image2);
[m,n]=size(image2);
r=100;
xc = m/2;
yc = n/2;
hold on
alfa = 0:0.01:2*pi;
x = xc + cos(alfa)' *r;
y = yc + sin(alfa)' *r;
plot(x,y,'r','LineWidth',2)

