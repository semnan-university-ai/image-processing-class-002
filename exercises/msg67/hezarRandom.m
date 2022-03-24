clear;
close all;
clc;

sizeHeight=1000;
sizeWidth=sizeHeight;
imgGray2=zeros(sizeWidth,sizeHeight);



for i=1 : sizeWidth
    for j=1 : sizeHeight
        imgGray2(i,j)=  randi(255);
    end
end    

figure, imshow(uint8(imgGray2));