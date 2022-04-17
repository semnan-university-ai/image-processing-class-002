clc;
close all;
clear;

img = imread("1.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 1');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

img = imread("2.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 2');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

img = imread("3.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 3');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

img = imread("4.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 4');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

img = imread("5.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 5');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

img = imread("6.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 6');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

img = imread("7.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 7');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

img = imread("8.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 8');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

img = imread("9.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 9');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

img = imread("10.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 10');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

img = imread("11.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 11');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

img = imread("12.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 12');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');
