clc;
clear;
close all;

img1 = imread('C:\Users\Ati\Desktop\Nowrooz/01.jpg');
img1 = im2gray(img1);
med1 = medfilt2(img1,[7 7]);
avgfilter1 = fspecial('average',[7 7]);
avg1 = imfilter(img1,avgfilter1);
figure,
subplot(1,2,1);imshow(med1);title('Median 01');
subplot(1,2,2);imshow(avg1);title('Mean 01');


img2 = imread('C:\Users\Ati\Desktop\Nowrooz/02.jpg');
img2 = im2gray(img2);
med2 = medfilt2(img2,[7 7]);
avgfilter2 = fspecial('average',[7 7]);
avg2 = imfilter(img2,avgfilter2);
figure,
subplot(1,2,1);imshow(med2);title('Median 02');
subplot(1,2,2);imshow(avg2);title('Mean 02');

img3 = imread('C:\Users\Ati\Desktop\Nowrooz/03.jpg');
img3 = im2gray(img3);
med3 = medfilt2(img3,[7 7]);
avgfilter3 = fspecial('average',[7 7]);
avg3 = imfilter(img3,avgfilter3);
figure,
subplot(1,2,1);imshow(med3);title('Median 03');
subplot(1,2,2);imshow(avg3);title('Mean 03');


img4 = imread('C:\Users\Ati\Desktop\Nowrooz/04.jpg');
img4 = im2gray(img4);
med4 = medfilt2(img4,[7 7]);
avgfilter4 = fspecial('average',[7 7]);
avg4 = imfilter(img4,avgfilter4);
figure,
subplot(1,2,1);imshow(med4);title('Median 04');
subplot(1,2,2);imshow(avg4);title('Mean 04');


img5 = imread('C:\Users\Ati\Desktop\Nowrooz/05.jpg');
img5 = im2gray(img5);
med5 = medfilt2(img5,[7 7]);
avgfilter5 = fspecial('average',[7 7]);
avg5 = imfilter(img5,avgfilter5);
figure,
subplot(1,2,1);imshow(med5);title('Median 05');
subplot(1,2,2);imshow(avg5);title('Mean 05');


img6 = imread('C:\Users\Ati\Desktop\Nowrooz/06.jpg');
img6 = im2gray(img6);
med6 = medfilt2(img6,[7 7]);
avgfilter6 = fspecial('average',[7 7]);
avg6 = imfilter(img6,avgfilter6);
figure,
subplot(1,2,1);imshow(med6);title('Median 06');
subplot(1,2,2);imshow(avg6);title('Mean 06');


img7 = imread('C:\Users\Ati\Desktop\Nowrooz/07.jpg');
img7 = im2gray(img7);
med7 = medfilt2(img7,[7 7]);
avgfilter7 = fspecial('average',[7 7]);
avg7 = imfilter(img7,avgfilter7);
figure,
subplot(1,2,1);imshow(med7);title('Median 07');
subplot(1,2,2);imshow(avg7);title('Mean 07');


img8 = imread('C:\Users\Ati\Desktop\Nowrooz/08.jpg');
img8 = im2gray(img8);
med8 = medfilt2(img8,[7 7]);
avgfilter8 = fspecial('average',[7 7]);
avg8 = imfilter(img8,avgfilter8);
figure,
subplot(1,2,1);imshow(med8);title('Median 08');
subplot(1,2,2);imshow(avg8);title('Mean 08');


img9 = imread('C:\Users\Ati\Desktop\Nowrooz/09.jpg');
img9 = im2gray(img9);
med9 = medfilt2(img9,[7 7]);
avgfilter9 = fspecial('average',[7 7]);
avg9 = imfilter(img9,avgfilter9);
figure,
subplot(1,2,1);imshow(med9);title('Median 09');
subplot(1,2,2);imshow(avg9);title('Mean 09');


img10 = imread('C:\Users\Ati\Desktop\Nowrooz/10.jpg');
img10 = im2gray(img10);
med10 = medfilt2(img10,[7 7]);
avgfilter10 = fspecial('average',[7 7]);
avg10 = imfilter(img10,avgfilter10);
figure,
subplot(1,2,1);imshow(med10);title('Median 10');
subplot(1,2,2);imshow(avg10);title('Mean 10');


img11 = imread('C:\Users\Ati\Desktop\Nowrooz/11.jpg');
img11 = im2gray(img11);
med11 = medfilt2(img11,[7 7]);
avgfilter11 = fspecial('average',[7 7]);
avg11 = imfilter(img11,avgfilter11);
figure,
subplot(1,2,1);imshow(med11);title('Median 11');
subplot(1,2,2);imshow(avg11);title('Mean 11');


img12 = imread('C:\Users\Ati\Desktop\Nowrooz/12.jpg');
img12 = im2gray(img12);
med12 = medfilt2(img12,[7 7]);
avgfilter12 = fspecial('average',[7 7]);
avg12 = imfilter(img12,avgfilter12);
figure,
subplot(1,2,1);imshow(med12);title('Median 12');
subplot(1,2,2);imshow(avg12);title('Mean 12');