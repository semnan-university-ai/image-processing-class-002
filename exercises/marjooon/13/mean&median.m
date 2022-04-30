clc;
clear;
close all;

img1 = rgb2gray(imread('1.jpeg'));
mean = fspecial('average',[7 7]);
median = medfilt2(img1,[7 7]);
meanresult = imfilter(img1,mean);
figure,
subplot(1,2,1);imshow(median);title('Median one');
subplot(1,2,2);imshow(meanresult);title('Mean one');


img1 = rgb2gray(imread('2.jpeg'));
mean = fspecial('average',[7 7]);
median = medfilt2(img1,[7 7]);
meanresult = imfilter(img1,mean);
figure,
subplot(1,2,1);imshow(median);title('Median two');
subplot(1,2,2);imshow(meanresult);title('Mean two');

img1 = rgb2gray(imread('3.jpeg'));
mean = fspecial('average',[7 7]);
median = medfilt2(img1,[7 7]);
meanresult = imfilter(img1,mean);
figure,
subplot(1,2,1);imshow(median);title('Median three');
subplot(1,2,2);imshow(meanresult);title('Mean three');

img1 = rgb2gray(imread('4.jpeg'));
mean = fspecial('average',[7 7]);
median = medfilt2(img1,[7 7]);
meanresult = imfilter(img1,mean);
figure,
subplot(1,2,1);imshow(median);title('Median four');
subplot(1,2,2);imshow(meanresult);title('Mean four');

img1 = rgb2gray(imread('5.jpeg'));
mean = fspecial('average',[7 7]);
median = medfilt2(img1,[7 7]);
meanresult = imfilter(img1,mean);
figure,
subplot(1,2,1);imshow(median);title('Median five');
subplot(1,2,2);imshow(meanresult);title('Mean five');

img1 = rgb2gray(imread('6.jpeg'));
mean = fspecial('average',[7 7]);
median = medfilt2(img1,[7 7]);
meanresult = imfilter(img1,mean);
figure,
subplot(1,2,1);imshow(median);title('Median six');
subplot(1,2,2);imshow(meanresult);title('Mean six');

img1 = rgb2gray(imread('7.jpeg'));
mean = fspecial('average',[7 7]);
median = medfilt2(img1,[7 7]);
meanresult = imfilter(img1,mean);
figure,
subplot(1,2,1);imshow(median);title('Median seven');
subplot(1,2,2);imshow(meanresult);title('Mean seven');

img1 = rgb2gray(imread('8.jpeg'));
mean = fspecial('average',[7 7]);
median = medfilt2(img1,[7 7]);
meanresult = imfilter(img1,mean);
figure,
subplot(1,2,1);imshow(median);title('Median eight');
subplot(1,2,2);imshow(meanresult);title('Mean eight');

img1 = rgb2gray(imread('9.jpeg'));
mean = fspecial('average',[7 7]);
median = medfilt2(img1,[7 7]);
meanresult = imfilter(img1,mean);
figure,
subplot(1,2,1);imshow(median);title('Median nine');
subplot(1,2,2);imshow(meanresult);title('Mean nine');

img1 = rgb2gray(imread('10.jpeg'));
mean = fspecial('average',[7 7]);
median = medfilt2(img1,[7 7]);
meanresult = imfilter(img1,mean);
figure,
subplot(1,2,1);imshow(median);title('Median ten');
subplot(1,2,2);imshow(meanresult);title('Mean ten');

img1 = rgb2gray(imread('11.jpeg'));
mean = fspecial('average',[7 7]);
median = medfilt2(img1,[7 7]);
meanresult = imfilter(img1,mean);
figure,
subplot(1,2,1);imshow(median);title('Median eleven');
subplot(1,2,2);imshow(meanresult);title('Mean eleven');

img1 = rgb2gray(imread('12.jpeg'));
mean = fspecial('average',[7 7]);
median = medfilt2(img1,[7 7]);
meanresult = imfilter(img1,mean);
figure,
subplot(1,2,1);imshow(median);title('Median twelve');
subplot(1,2,2);imshow(meanresult);title('Mean twelve');