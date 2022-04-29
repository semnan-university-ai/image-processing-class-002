clc;
clear;
close all;

img1 = imread('C:\Users\Ati\Desktop\Nowrooz/01.jpg');
img1 = rgb2gray(img1);
heq1 = histeq(img1);
figure;
subplot(1,2,1);imshow(img1);title('Original Image 01');
subplot(1,2,2);imshow(heq1);title('Equalized Image 01');


img2 = imread('C:\Users\Ati\Desktop\Nowrooz/02.jpg');
img2 = rgb2gray(img2);
heq2 = histeq(img2);
figure;
subplot(1,2,1);imshow(img2);title('Original Image 02');
subplot(1,2,2);imshow(heq2);title('Equalized Image 02');


img3 = imread('C:\Users\Ati\Desktop\Nowrooz/03.jpg');
img3 = rgb2gray(img3);
heq3 = histeq(img3);
figure;
subplot(1,2,1);imshow(img3);title('Original Image 03');
subplot(1,2,2);imshow(heq3);title('Equalized Image 03');

img4 = imread('C:\Users\Ati\Desktop\Nowrooz/04.jpg');
img4 = rgb2gray(img4);
heq4 = histeq(img4);
figure;
subplot(1,2,1);imshow(img4);title('Original Image 04');
subplot(1,2,2);imshow(heq4);title('Equalized Image 04');


img5 = imread('C:\Users\Ati\Desktop\Nowrooz/05.jpg');
img5 = rgb2gray(img5);
heq5 = histeq(img5);
figure;
subplot(1,2,1);imshow(img5);title('Original Image 05');
subplot(1,2,2);imshow(heq5);title('Equalized Image 05');


img6= imread('C:\Users\Ati\Desktop\Nowrooz/06.jpg');
img6 = rgb2gray(img6);
heq6 = histeq(img6);
figure;
subplot(1,2,1);imshow(img6);title('Original Image 06');
subplot(1,2,2);imshow(heq6);title('Equalized Image 06');


img7= imread('C:\Users\Ati\Desktop\Nowrooz/07.jpg');
img7 = rgb2gray(img7);
heq7 = histeq(img7);
figure;
subplot(1,2,1);imshow(img7);title('Original Image 07');
subplot(1,2,2);imshow(heq7);title('Equalized Image 07');


img8= imread('C:\Users\Ati\Desktop\Nowrooz/08.jpg');
img8 = rgb2gray(img8);
heq8 = histeq(img8);
figure;
subplot(1,2,1);imshow(img8);title('Original Image 08');
subplot(1,2,2);imshow(heq8);title('Equalized Image 08');


img9= imread('C:\Users\Ati\Desktop\Nowrooz/09.jpg');
img9 = rgb2gray(img9);
heq9 = histeq(img9);
figure;
subplot(1,2,1);imshow(img9);title('Original Image 09');
subplot(1,2,2);imshow(heq9);title('Equalized Image 09');


img10= imread('C:\Users\Ati\Desktop\Nowrooz/10.jpg');
img10 = rgb2gray(img10);
heq10 = histeq(img10);
figure;
subplot(1,2,1);imshow(img10);title('Original Image 10');
subplot(1,2,2);imshow(heq10);title('Equalized Image 10');


img11= imread('C:\Users\Ati\Desktop\Nowrooz/11.jpg');
img11 = rgb2gray(img11);
heq11 = histeq(img11);
figure;
subplot(1,2,1);imshow(img11);title('Original Image 11');
subplot(1,2,2);imshow(heq11);title('Equalized Image 11');


img12= imread('C:\Users\Ati\Desktop\Nowrooz/12.jpg');
img12 = rgb2gray(img12);
heq12 = histeq(img12);
figure;
subplot(1,2,1);imshow(img12);title('Original Image 12');
subplot(1,2,2);imshow(heq12);title('Equalized Image 12');