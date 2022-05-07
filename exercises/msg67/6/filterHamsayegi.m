clear;
close all;
clc;
%---------------------------------
img1= imread("normal.png");
imgGray= rgb2gray(img1);
figure, imshow(imgGray);


size=size(imgGray);
sizeWidth = size(1,1);
sizeHeight = size(1,2);



imgGray2=zeros(sizeWidth,sizeHeight);
imgGray2= double(imgGray2);
figure, imshow(uint8(imgGray2));

  

for i=2 : sizeWidth-1
    for j=2 : sizeHeight-1
        imgGray2(i,j)= sqrt(double(imgGray(i,j-1)))+ sqrt(double(imgGray(i,j+1)))...
            +sqrt(double(imgGray(i-1,j)))+sqrt(double(imgGray(i+1,j))); 
    end
end  

figure, imshow(uint8(imgGray2));
