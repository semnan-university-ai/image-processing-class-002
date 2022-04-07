
clc;
clear;
close all;
% img=[1 2 3 ;4 5 6]
img=imread('boat.png');
PadImg= padarray(img,[1 1],0,'both');
[row,column,dim] = size(PadImg);

figure, imshow(PadImg);
title('orginal image');

for i=2:row-1
    for j=2:column-1
        for k=1:dim
            PadImg(i,j,k)= sqrt(double(PadImg(i-1,j,k))) + sqrt(double(PadImg(i,j-1,k)))...
            +sqrt(double(PadImg(i+1,j,k)))+sqrt(double(PadImg(i,j+1,k))); 
        end
    end
end

figure, imshow(uint8(PadImg));
title('final image');
