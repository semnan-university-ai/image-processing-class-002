clc;
close all;
clear;

img = imread("1.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

img = imread("2.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

img = imread("3.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

img = imread("4.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

img = imread("5.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

img = imread("6.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

img = imread("7.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

img = imread("8.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

img = imread("9.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

img = imread("10.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

img = imread("11.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

img = imread("12.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');
