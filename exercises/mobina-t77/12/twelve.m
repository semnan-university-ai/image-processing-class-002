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
    img3 = img2;
    [row,column] = size(img2);
    NumPixel = zeros(1,256);
    for i = 1:row
        for j = 1:column
        NumPixel( img2(i,j) + 1 ) = NumPixel( img2(i,j) + 1 ) + 1;
        end
    end

    ProbPixel = zeros(1,256);
    for i = 1:256
        ProbPixel(i) = NumPixel(i) / (row * column * 1.0);
    end

    Cumupixel = zeros(1,256);
    for i = 1:256
        if i == 1
            Cumupixel(i) = ProbPixel(i);
        else
            Cumupixel(i) = Cumupixel(i - 1) + ProbPixel(i);
        end
    end

    Map = zeros(1,256);
    for i = 1:256
        Map(i) = uint8(255 * Cumupixel(i) + 0.5);
    end
    
    for i = 1:row
        for j = 1:column
            img2(i,j) = Map(img2(i,j) + 1);
         end
    end
    

figure,imshow(img1);title('color-ful image');
figure,imhist(img1);title('hist of color-ful image');
figure,imshow(img3);title('gray_scale image');
figure,imhist(img3);title('hist of gray_scale image');
figure,imshow(img2);title('equalized image');
figure,imhist(img2);title('hist of equalized image');

end
