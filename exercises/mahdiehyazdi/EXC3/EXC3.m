clc;
clear all;
close all;

img = imread('./inputImage.jpg');
img =rgb2gray(img);
figure,imshow(img);

[i,j]=size(img);
while true
    k= randi(i);
    l=randi(j-1);
    if ((k+50<i) & (l+50<j))
        break;
    end
    
end
img(k:k+50,l:l+50)=255;
imshow(img);