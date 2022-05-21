clc;
clear;
close all;
img = imread('cameraman.tif');
x1=1;
x2=150;
y1=1;
y2=200;
croped_img = img(x1:x2,y1:y2);
imshowpair(i,img,'montage')
