clc;
close all;
clear;

image1=uint8(randi(255,1000,1000,3)); 
subplot(211),imshow(image1),title('Image RGB')
image2=uint8(randi(255,1000,1000,1)); 
subplot(212),imshow(image2),title('Image gray')