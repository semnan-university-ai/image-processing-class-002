clc;
clear;
close all;
image = imread('pool.png');
[m,n,k] = size(image);
image1= zeros (60,150,3);
randx=input('what is xpoint');
randy=input('what is ypoint');
randx1=60;     %input('what is length crop') ;
randy1=150;    %input('what is width crop') ;
image1(1:randx1,1:randy1,1:3)=image(randx:randx+randx1-1,randy:randy+randy1-1,1:3);
figure;
subplot(1,2,1),imshow(uint8(image));title('orginal image');   
subplot(1,2,2),imshow(uint8(image1)); title('crop image');