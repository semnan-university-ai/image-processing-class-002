clc;
close all;
clear;

% % predefined function

% img1=imread('boat.png');
% figure,imhist(img1)
% figure,imshow(img1)
% new_img1=histeq(img1)
% figure,imshow(new_img1)
% figure,imhist(new_img1)


%implementation

path='C:\Users\Mobina\Desktop\term 4\tamrin -hal-tamrin\12';
folder=dir(fullfile(path,'*.jpg'));

for num=1:12
    picture=fullfile(path,folder(num).name);
    img1=imread(picture);
    img2 = rgb2gray(img1);
    [row,column] = size(img2);
    
    
    NumPixel = zeros(256,1);
    for i = 1:row
        for j = 1:column
        NumPixel( img2(i,j) + 1 ) = NumPixel( img2(i,j) + 1 ) + 1;
        end
    end
    
    cdf=zeros(256,1);
    total=0;
    for i = 1:256
        total = total + NumPixel(i);
        cdf(i) = total;
    end
    
    New=zeros(256,1);
    for i = 1:256
        New(i) = round((((cdf(i)- min(cdf))/(max(cdf)-min(cdf))))*255);
    end
    
   
    img3=uint8(zeros(size(img2)));
    for i = 1:row
         for j = 1:column
            img3(i,j) = New(img2(i,j) + 1);
         end
    end
end

figure,imshow(img1);title('color-ful image');
figure,imhist(img1);title('hist of color-ful image');
figure,imshow(img2);title('gray_scale image');
figure,imhist(img2);title('hist of gray_scale image');
figure,imshow(img3);title('equalized image');
figure,imhist(img3);title('hist of equalized image');