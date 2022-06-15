clc 
clear all 
close all 
pic = imread('onion.png');
pic =rgb2gray(pic);
[m,n]=size(pic);
npic1=pic+50;
npic2=pic;
for i=1:m
    for j=1:n
        npic2(i,j) = npic2(i,j)+50;
    end
end
subplot (1,3,1)
imshow(pic)
title (' original ')
subplot (1,3,2)
imshow(npic1)
title (' +50 ')
subplot (1,3,3)
imshow(npic2)
title (' for ')