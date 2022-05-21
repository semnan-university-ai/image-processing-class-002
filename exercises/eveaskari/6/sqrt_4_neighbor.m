clc;
close all;
clear;

img0 = imread("MATLAB/cat.png");
img0 = rgb2gray(img0);
figure, imshow(img0);

img_siz = size(img0);
sw = img_siz(1,1) ;
sh = img_siz(1,2);

img1 = zeros(sw, sh);
img1 = double(img0);
figure, imshow(uint8(img1));


for i = 2: sw-1
    for j = 2: sh-1
        
       img1(i,j) =  sqrt(double(img0(i+1,j))) + sqrt(double(img0(i,j-1))) + sqrt(double(img0(i,j+1))) + sqrt(double(img0(i-1,j)));
             
    end
end

figure, imshow(uint8(img1));