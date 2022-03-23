clc;
clear;
close all;
img=uint8(randi(255,1000,1000,1));%255 = max number
%with 3 rgb image & without 3 gray image
figure, imshow(img)
imwrite(img,'myImage.png')