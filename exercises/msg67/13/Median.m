clear;
close all;
clc;
%.................................


img1= imread("normal.png");
imgGray= rgb2gray(img1);
figure, imshow(imgGray);
copyImg= imgGray;


sizeOrig=size(imgGray);
sizeWidth = sizeOrig(1,1);
sizeHeight = sizeOrig(1,2);


padd=zeros(sizeWidth+6 ,sizeHeight+6);


for i=1 : sizeWidth
    for j=1 : sizeHeight
        padd(i+3,j+3)= imgGray(i,j); 
    end
end   



for i=1+3 : sizeWidth+3
    for j=1+3 : sizeHeight+3
        arr =[ padd(i-3,j-3), padd(i-3,j-2),padd(i-3,j-1),padd(i-3,j),...
            padd(i-3,j+1),padd(i-3,j+2),padd(i-3,j+3),...
            padd(i-2,j-3),padd(i-2,j-2),padd(i-2,j-1),padd(i-2,j),...
            padd(i-2,j+1),padd(i-2,j+2),padd(i-2,j+3),...
            padd(i-1,j-3),padd(i-1,j-2),padd(i-1,j-1),padd(i-1,j),...
            padd(i-1,j+1),padd(i-1,j+2),padd(i-1,j+3),...
            padd(i,j-3),  padd(i,j-2),  padd(i,j-1),padd(i,j),...
            padd(i,j+1),  padd(i,j+2),  padd(i,j+3),...
            padd(i+1,j-3),padd(i+1,j-2),padd(i+1,j-1),padd(i+1,j),...
            padd(i+1,j+1),padd(i+1,j+2),padd(i+1,j+3),...
            padd(i+2,j-3),padd(i+2,j-2),padd(i+2,j-1),padd(i+2,j),...
            padd(i+2,j+1),padd(i+2,j+2),padd(i+2,j+3),...
            padd(i+3,j-3),padd(i+3,j-2),padd(i+3,j-1),padd(i+3,j),...
            padd(i+3,j+1),padd(i+3,j+2),padd(i+3,j+3)
            ]; 
        arrSort=sort(arr);
        copyImg(i-3 , j-3)=arrSort(25);
    end
end 



figure, imshow(uint8(padd));
figure, imshow(copyImg)



