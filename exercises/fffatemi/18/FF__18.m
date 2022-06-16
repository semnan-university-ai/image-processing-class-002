close all;
clear;
clc;

IMG1 = imread('cameraman.tif');

IMG2 = imread('text.png');

IMG2 = double(imresize(IMG2,size(IMG1)));

% subplot(1,2,1) , imshow(IMG1) , title('image 1')
% subplot(1,2,2) , imshow(IMG2) , title('image 2')

[I,J] = size(IMG1);

IMG1 = double(IMG1);

B = de2bi(IMG1,8);   % convert decimal values to binary with 8 bit

figure

Tile = ["plane1","plane2","plane3","plane4","plane5","plane6","plane7","plane8"];


for i = 1:8
    C = B(:,i);
    D{i} = reshape(C,I,J);
    subplot(2,4,i) , imshow(D{i}) , title(Tile(i));
end

New_IMG1= 128*D{8} + 64*D{7} + 32*D{6} + 16*D{5} + 8*D{4} + 4*D{3} + 2*D{2} + 1*IMG2;

figure

subplot(1,2,1) , imshow( uint8(New_IMG1)) , title('Hidden text')

B1 = de2bi(New_IMG1,8);

C1 = B1(:,1);

D1 = reshape(C1,I,J);

subplot(1,2,2) , imshow(D1) , title('TEXT.IMG')

figure

Reduce_size=128*D{8} + 64*D{7} + 32*D{6} + 16*D{5} + 8*D{4};

subplot(2,4,1) , imshow(uint8(IMG1)) , title('image 1')

subplot(2,4,2) , imshow(uint8(Reduce_size)) , title('Reduce image1 size')

subplot(2,4,5) , imhist(uint8(IMG1))

subplot(2,4,6) , imhist(uint8(Reduce_size))

HISTO1 = histeq(im2double(uint8(IMG1)));

HISTO2 = histeq(im2double(uint8(Reduce_size)));

subplot(2,4,3) , imshow(HISTO1),title('histogram equlization Main Image')
subplot(2,4,4) , imshow(HISTO2),title('histogram equlization Reduce Size')

subplot(2,4,7) , imhist(HISTO1)

subplot(2,4,8) , imhist(HISTO2)

