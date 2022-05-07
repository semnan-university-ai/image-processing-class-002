clear;
close all;
clc;
% 50% va padding.................................

img1= imread("normal.png");
imgGray= rgb2gray(img1);
figure, imshow(imgGray);


size=size(imgGray);
sizeWidth = size(1,1);
sizeHeight = size(1,2);



%aa=imgGray[(1,1) : (1,15)]


a=imgGray(1,1);
imgGray(1,1)= imgGray(1,1)+ imgGray(1,1)*(50/100) ;
b=imgGray(1,1);

imgGray2=zeros(sizeWidth,sizeHeight);

for i=1 : sizeWidth
    for j=1 : sizeHeight
        imgGray2(i,j)= imgGray(i,j)*(50/100)+ imgGray(i,j); 
    end
end    

figure, imshow(uint8(imgGray2));
