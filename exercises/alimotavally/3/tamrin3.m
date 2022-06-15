clc;
close all;
clear;

img = imread('/Users/s.ali.motavally/Desktop/tamrin3/imaget2.jpg');
img =rgb2gray(img);
img = imresize(img, [450 550]);
figure,imshow(img);

[i,j]=size(img);
while true
    widsqre= randi(i);
    lesqre=randi(j-1);
    if ((widsqre+50<i) && (lesqre+50<j))
        break;
    end
    
end
img(widsqre:widsqre+50,lesqre:lesqre+50)=255;
imshow(img);