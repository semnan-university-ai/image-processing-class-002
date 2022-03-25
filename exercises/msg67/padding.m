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




padd=zeros(sizeWidth+2 ,sizeHeight+2);

%pad-e bala
for i=1
    for j=1 : sizeHeight
        padd(i,j+2)= imgGray(i,j); 
    end
end    

%pad-e payeen
for i=sizeWidth
    for j=1 : sizeHeight
        padd(i+2,j+1)= imgGray(i,j); 
    end
end    

%pad-e chap
for i=1 : sizeWidth
    for j=1
        padd(i,j)= imgGray(i,j); 
    end
end 

%pad-e rast
for i=1 : sizeWidth
    for j=sizeHeight
        padd(i+1,j+2)= imgGray(i,j); 
    end
end 

figure, imshow(uint8(padd));