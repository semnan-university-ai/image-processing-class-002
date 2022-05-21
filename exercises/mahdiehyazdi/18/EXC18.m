clear;
close all;
clc;

img=rgb2gray(imread("./Lenna.png"));
figure,imshow(uint8(img)),hold on
text_img=im2bw(imread("./text.jpg"));
figure, imshow(text_img);

[size_x, size_y] = size(img);
[size_w, size_z] = size(text_img);

if size_x<size_w && size_y<size_z
    text_img = imresize(text_img, [size_x ,size_y]);
    img = imresize(img, [size_x, size_y]);
else
    img = imresize(img, [size_w ,size_z]);
    text_img = imresize(text_img, [size_w, size_z]);
 end
    
bitPlane_1 = text_img;
bitPlane_2 = mod(floor(double(img)/2), 2);
bitPlane_3 = mod(floor(double(img)/4), 2);
bitPlane_4 = mod(floor(double(img)/8), 2);
bitPlane_5 = mod(floor(double(img)/16), 2);
bitPlane_6 = mod(floor(double(img)/32), 2);
bitPlane_7 = mod(floor(double(img)/64), 2);
bitPlane_8 = mod(floor(double(img)/128), 2);

pic = (2 * (2 * (2 * (2 * (2 * (2 * (2 * bitPlane_8 + bitPlane_7) + bitPlane_6) + bitPlane_5) + bitPlane_4) + bitPlane_3) + bitPlane_2) + bitPlane_1);

figure, subplot(2, 5, 1);
imshow(img);
title('Original Image');

subplot(2, 5, 2);
imshow(bitPlane_1);
title('Bit Plane 1');

subplot(2, 5, 3);
imshow(bitPlane_2);
title('Bit Plane 2');

subplot(2, 5, 4);
imshow(bitPlane_3);
title('Bit Plane 3');

subplot(2, 5, 5);
imshow(bitPlane_4);
title('Bit Plane 4');

subplot(2, 5, 6);
imshow(bitPlane_5);
title('Bit Plane 5');

subplot(2, 5, 7);
imshow(bitPlane_6);
title('Bit Plane 6');

subplot(2, 5, 8);
imshow(bitPlane_7);
title('Bit Plane 7');

subplot(2, 5, 9);
imshow(bitPlane_8);
title('Bit Plane 8');

subplot(2, 5, 10);
imshow(uint8(pic));
title('Recombined Image');


figure, subplot(1, 2,1)
imshow(uint8(pic));
title("original Pic");

subplot(1,2 , 2)
imhist(uint8(pic));


bit_Pic = 2*(2 * (2 * (2 * (2 * (2 * (2 * bitPlane_8 + bitPlane_7) + bitPlane_6) + bitPlane_5) ) ) );

figure, imshow(uint8(bit_Pic)); title("bitPlane 8 & 7 & 6 & 5");
