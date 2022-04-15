clc;
close all;
clear;
image1=imread('peppers.png');
image2=rgb2gray(image1);
figure,imshow(image2);
[m,n]= size(image2);
randx=randi(m);
randy=randi(n);
for i= randx-25 :randx+25
    for j= randy-25 : randy+25
        if randx<50 | randx > m-50 |randy<50 |randy>n-50
            image2(i,j)=image2(i,j);
        else
        image2(i,j)= 255;
        end
    end
end
image3=image2;
figure,imshow(image3);
