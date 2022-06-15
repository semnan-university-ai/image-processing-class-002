clc;
clear;
close all;

img_s= imread('s.png');
img_s=rgb2gray(img_s);
image1=histeq(img_s);
figure;
subplot(3,2,1);imshow(img_s);title("picture sobh");
subplot(3,2,2);imshow(image1);title("histogram behine");

img_z= imread('z.png');
img_z=rgb2gray(img_z);
image2=histeq(img_z);
subplot(3,2,3);imshow(img_z);title("picture zohr");
subplot(3,2,4);imshow(image2);

img_sh= imread('sh.png');
img_sh=rgb2gray(img_sh);
image3=histeq(img_sh);
subplot(3,2,5);imshow(img_sh);title("picture shab");
subplot(3,2,6);imshow(image3);
