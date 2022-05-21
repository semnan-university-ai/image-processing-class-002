clc;
clear;
close all;

img = imread("Fruits.jpg");
ImgCrp_func(img,35,140,40,200)

function ImageCrop = ImgCrp_func(img,RS,RE,CS,CE)
%RS:RowStart , RE:RowEnd , CS:ColumnStart , CE:ColumnEnd
ImageCrop = img(RS:RE, CS:CE, :);

figure;
subplot(1,2,1), imshow(img), title('Original Image');
subplot(1,2,2), imshow(ImageCrop), title('Cropped Image');

end