clc;
clear;
close all;
src_img = imread('fruit.png');
src_img = rgb2gray(src_img);
[x y] = size(src_img);
win_Size = [3,3];
pad_size = floor(3/2);
for i = 1 : x
    for j = 1 : y
        pad_img = padarray(src_img,[pad_size pad_size],'replicate','both');     
    end
end
subplot(221);imshow(src_img);title('Source Image');
subplot(222);imshow(pad_img);title("After Padding");
imwrite(pad_img,'myImage.png')
