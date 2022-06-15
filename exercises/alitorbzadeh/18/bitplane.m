clc
clear all
close all
img0=imread('1438480.jpg');
img= rgb2gray(img0);
img1=imread('text.jpg');
Hidimg=rgb2gray(img1);
x1= size(img,1);
y1= size(img,2);
z1= size(img,3);
x2= size(Hidimg,1);
y2= size(Hidimg,2);
z2= size(Hidimg,3);

Hidimg= imresize(Hidimg,[x1,y1]);
b8=mod(floor(img/128), 2);
b7=mod(floor(img/64), 2);
b6=mod(floor(img/32), 2);
b5=mod(floor(img/16), 2);
b4=mod(floor(img/8), 2);
b3=mod(floor(img/4), 2);
b2=mod(floor(img/2), 2);
b1=mod(floor(Hidimg/128), 2);
temp=(2*(2*(2*(2*(2*(2*(2*b8)+b7)+b6)+b5)+b4)+b3)+b2)+b1; 
Com1=b8 .* 128+b7 .* 64+b6 .*32 ;
Com2=b8 .* 128+b7 .* 64+b6 .*32 +b5.*16+b4.*8;
figure(1);
imshow((b8.*255))
title('bitplane 8');
figure(2);
subplot (2,3,1)
imshow(img);
title('initail img');
subplot (2,3,2)
imhist(img)
title(' hist initail img');
subplot (2,3,3)
imhist(histeq(temp))
title('hist equalisation initial img');
subplot (2,3,4)
imshow(uint8(temp));
title('steganography');
subplot (2,3,5)
imhist(temp)
title(' hist steganography');
subplot (2,3,6)
imhist(histeq(temp))
title(' histogram equalisation steganography');

 
figure;
subplot (1,2,1)
imshow(uint8(Com1));
title('8-7-6');
subplot (1,2,2)
imshow(img);
title('8-7-6-5-4');