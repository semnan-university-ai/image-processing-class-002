close all;
clear;
clc;

IMG1 = rgb2gray(imread('Haftsin.jpeg'));

[I,J] = size(IMG1);

X = 7;

W = (X-1)/2;

IMG2 = zeros(I,J);

Mean_img = zeros(I,J);

Med_img = zeros(I,J);

for i = 1+W:I-W
    for j = 1+W:J-W

        IMG2=IMG1(i-W:i+W,j-W:j+W);
        Mean_img(i,j)=mean(IMG2(:));
        Med_img(i,j)=median(IMG2(:));

    end
end

figure,imshow(uint8(Mean_img)),title('mean filter')

figure,imshow(uint8(Med_img)),title('median filter')

figure,imshow(IMG1),title('Original')


