clc;
close all;
clear all;

img1=imread("photo_2022-03-30_21-00-33.jpg");
figure(1);
imshow(img1);

row=size(img1,1);
col=size(img1,2);
Channels=3;
img2=zeros(row,col,Channels);

for i=1:row
    for j=1:col
        for k=1:Channels
            img2(i,j,k)= .299*img1(i,j,1)+.577*img1(i,j,2)+.144*img1(i,j,3);
        end
    end
end

img2=uint8(img2);
figure(2);
imshow(img2)