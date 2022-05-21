clc; 
close all;
clear;
image1=imread('fruits.png');
image2=rgb2gray(image1);
figure,imshow(image2);
[m,n]=size(image2);
padimage=zeros(m+2,n+2);
padimage(2:end-1,2:end-1)=image2;
figure, imshow(uint8 (padimage));
%padimage= padarray(image2,[1,1],0,both);
[mp,np]=size(padimage);
for i=2:mp-1
    for j=2:np-1
        image3(i,j)=sqrt(double(padimage(i-1,j)))+sqrt(double(padimage(i+1,j)))+...
            sqrt(double(padimage(i,j-1)))+sqrt(double(padimage(i,j+1)));
    end
end
figure,imshow(uint8(image3));
