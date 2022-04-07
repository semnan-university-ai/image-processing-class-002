clc;
close all;
clear;

img1 = imread('fruits.png');
img_gry =rgb2gray(img1);
[a,b]=size(img_gry);
N = img_gry;
while (1)

    i= randi(a);
    j=randi(b-1);
    if ((i+50<a) & (j+50<b))
        break;
    end
end 
N=img_gry;
N(i:i+50,j:j+50)=255;
imshow(N)