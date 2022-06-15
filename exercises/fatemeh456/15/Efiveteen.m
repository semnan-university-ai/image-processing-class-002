clc;
close all;
clear;

RGBimage = imread("fruit.jfif");
[x,y,~] = size(RGBimage);

for i = 1 : x
  for j = 1 : y
      grayImage(i,j) = 0.299 * RGBimage(i,j,1) + 0.587 * RGBimage(i,j,2) + 0.114 * RGBimage(i,j,3) ;
  end
end

subplot(1,2,1), imshow(RGBimage), title('RGB Scale Image');
subplot(1,2,2), imshow(grayImage), title('Gray Scale Image');
