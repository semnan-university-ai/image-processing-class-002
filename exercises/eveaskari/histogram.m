clc;
close all;
clear;

img1 = rgb2gray(imread("data 7 sin/08.jpeg"));
img2 = rgb2gray(imread("data 7 sin/09.jpeg"));
img3 = rgb2gray(imread("data 7 sin/10.jpeg"));
img4 = rgb2gray(imread("data 7 sin/12.jpeg"));
img5 = rgb2gray(imread("data 7 sin/14.jpeg"));
img6 = rgb2gray(imread("data 7 sin/15.jpeg"));
img7 = rgb2gray(imread("data 7 sin/16.jpeg"));
img8 = rgb2gray(imread("data 7 sin/19.jpeg"));
img9 = rgb2gray(imread("data 7 sin/20.jpeg"));
img10 = rgb2gray(imread("data 7 sin/21.jpeg"));
img11 = rgb2gray(imread("data 7 sin/22.jpeg"));
img12 = rgb2gray(imread("data 7 sin/23.jpeg"));

figure, imhist(img1);  %showing the histogram of source img
figure, imshow(histeq(img1));   %equalizing the picture
figure, imhist(histeq(img1));   %showing the equalized histogram


figure, imhist(img2);  
figure, imshow(histeq(img2));  
figure, imhist(histeq(img2));

figure, imhist(img3);  
figure, imshow(histeq(img3));  
figure, imhist(histeq(img3));

figure, imhist(img4);  
figure, imshow(histeq(img4));  
figure, imhist(histeq(img4));

figure, imhist(img5);  
figure, imshow(histeq(img5));  
figure, imhist(histeq(img5));

figure, imhist(img6);  
figure, imshow(histeq(img6));  
figure, imhist(histeq(img6));

figure, imhist(img7);  
figure, imshow(histeq(img7));  
figure, imhist(histeq(img7));

figure, imhist(img8);  
figure, imshow(histeq(img8));  
figure, imhist(histeq(img8));

figure, imhist(img9);  
figure, imshow(histeq(img9));  
figure, imhist(histeq(img9));

figure, imhist(img10);  
figure, imshow(histeq(img10));  
figure, imhist(histeq(img10));

figure, imhist(img11);  
figure, imshow(histeq(img11));  
figure, imhist(histeq(img11));


figure, imhist(img12);  
figure, imshow(histeq(img12));  
figure, imhist(histeq(img12));
