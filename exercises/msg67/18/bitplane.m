clear;
close all;
clc;
%........................

img= imread("asset/Lenna.png");
figure,imshow(uint8(img)),hold on

img=rgb2gray(img);
figure,imshow(uint8(img)),hold on

textIn=imread("asset/text.jpg");
textBin = im2bw(textIn);
figure, imshow(textBin);

% img=textIn;

size=size(img);
sizeWidth = size(1,1);
sizeHeight = size(1,2);
%------------------------------------------

imgDouble= double(img);

% ijade bit plane haye 1 ta 8
% b1 = mod(imgDouble, 2);
b1 = textBin;
b2 = mod(floor(imgDouble/2), 2);
b3 = mod(floor(imgDouble/4), 2);
b4 = mod(floor(imgDouble/8), 2);
b5 = mod(floor(imgDouble/16), 2);
b6 = mod(floor(imgDouble/32), 2);
b7 = mod(floor(imgDouble/64), 2);
b8 = mod(floor(imgDouble/128), 2);


% combining image again to form equivalent to original grayscale image
orginalPic = (2 * (2 * (2 * (2 * (2 * (2 * (2 * b8 + b7) + b6) + b5) + b4) + b3) + b2) + b1);

% plotting original image in first subplot
figure, subplot(2, 5, 1);
imshow(img);
title('Original Image');


subplot(2, 5, 2);
imshow(b1);
title('Bit Plane 1');
subplot(2, 5, 3);
imshow(b2);
title('Bit Plane 2');
subplot(2, 5, 4);
imshow(b3);
title('Bit Plane 3');
subplot(2, 5, 5);
imshow(b4);
title('Bit Plane 4');
subplot(2, 5, 6);
imshow(b5);
title('Bit Plane 5');
subplot(2, 5, 7);
imshow(b6);
title('Bit Plane 6');
subplot(2, 5, 8);
imshow(b7);
title('Bit Plane 7');
subplot(2, 5, 9);
imshow(b8);
title('Bit Plane 8');

% plotting recombined image in 10th subplot
subplot(2, 5, 10);
imshow(uint8(orginalPic));
title('Recombined Image');


figure, subplot(1, 2,1)
imshow(uint8(orginalPic));
title("original Pic");
subplot(1,2 , 2)
imhist(uint8(orginalPic));



bitPic = 2*(2 * (2 * (2 * (2 * (2 * (2 * b8 + b7) + b6) + b5) ) ) );

figure, imshow(uint8(bitPic)); title("bitPlane 8, 7, 6, 5");


