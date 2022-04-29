clc;
close all;
clear;


img1 = rgb2gray(imread("1.jpg"));
img2 = rgb2gray(imread("2.jpg"));
img3 = rgb2gray(imread("3.jpg"));
img4 = rgb2gray(imread("4.jpg"));
img5 = rgb2gray(imread("5.jpg"));
img6 = rgb2gray(imread("6.jpg"));
img7 = rgb2gray(imread("7.jpg"));
img8 = rgb2gray(imread("8.jpg"));
img9 = rgb2gray(imread("9.jpg"));
img10 = rgb2gray(imread("10.jpg"));
img11 = rgb2gray(imread("11.jpg"));
img12 = rgb2gray(imread("12.jpg"));
img13 = rgb2gray(imread("13.jpg"));

figure;
subplot(1,2,1);imshow(img1);
subplot(1,2,2);imshow(histeq(img1));

figure;
subplot(1,2,1);imshow(img2);
subplot(1,2,2);imshow(histeq(img2));

figure;
subplot(1,2,1);imshow(img3);
subplot(1,2,2);imshow(histeq(img3));

figure;
subplot(1,2,1);imshow(img4);
subplot(1,2,2);imshow(histeq(img4));


figure;
subplot(1,2,1);imshow(img5);
subplot(1,2,2);imshow(histeq(img5));


figure;
subplot(1,2,1);imshow(img6);
subplot(1,2,2);imshow(histeq(img6));


figure;
subplot(1,2,1);imshow(img7);
subplot(1,2,2);imshow(histeq(img7));


figure;
subplot(1,2,1);imshow(img8);
subplot(1,2,2);imshow(histeq(img8));


figure;
subplot(1,2,1);imshow(img9);
subplot(1,2,2);imshow(histeq(img9));


figure;
subplot(1,2,1);imshow(img10);
subplot(1,2,2);imshow(histeq(img10));

figure;
subplot(1,2,1);imshow(img11);
subplot(1,2,2);imshow(histeq(img11));

figure;
subplot(1,2,1);imshow(img12);
subplot(1,2,2);imshow(histeq(img12));

figure;
subplot(1,2,1);imshow(img13);
subplot(1,2,2);imshow(histeq(img13));



