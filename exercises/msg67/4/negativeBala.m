clear;
close all;
clc;
% 50% va padding.................................

img1= imread("normal.png");
imgGray= rgb2gray(img1);
figure, imshow(imgGray);
imgGray=(int32(imgGray));

size=size(imgGray);
sizeWidth = size(1,1);
sizeHeight = size(1,2);



%aa=imgGray[(1,1) : (1,15)]


imgGray2=int32(imgGray);


for i=1 : sizeWidth/2
    for j=1 : sizeHeight
        imgGray2(i,j)= imgGray(i,j)- 255;
        if imgGray2(i,j) < 0
            imgGray2(i,j)=  imgGray2(i,j) * -1;
        end
    end
end    

figure, imshow(uint8(imgGray2));
