clc;
clear;
close all;

img = rgb2gray(imread('MATLAB/peppers.png'));
[x ,y] = size(img);

for i = 1: x
    for j =1: y
        neg(i,j) = 255 - img(i,j);
    end
end


for i = 1: x
    for j =1: y
        riv(i,j) = img(j,i);
    end
end

%rot = imrotate(img, 180);
mir = flip(img,2);


ssimimg1 = ssim(neg, img);
figure, subplot(2,2,1),imshow(img),title('original image');
subplot(2,2,2),imshow(neg),title(['negative of the image' ,num2str(ssimimg1)]);

ssimimg2 = ssim(riv, img);
subplot(2,2,3),imshow(riv),title(['rivers of the image' ,num2str(ssimimg2)]);

ssimimg3 = ssim(mir, img);
subplot(2,2,4),imshow(mir),title(['rivers of the riv-image' ,num2str(ssimimg3)]);