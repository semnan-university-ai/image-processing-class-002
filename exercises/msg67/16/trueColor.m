clear;
close all;
clc;
%........................

img= imread("benchmark/cat.png");

size=size(img);
sizeWidth = size(1,1);
sizeHeight = size(1,2);
result=zeros(sizeWidth,sizeHeight,3);

resultImg=uint16(result);

figure,imshow(uint8(img)),hold on

% red
for i=1 : sizeWidth
    for j=1 : sizeHeight
        if img(i,j,1)< 25
            resultImg(i,j,1)= 0;
        elseif img(i,j,1) < 76
            resultImg(i,j,1)=51;
        elseif img(i,j,1)< 127
            resultImg(i,j,1)= 102;
        elseif img(i,j,1) < 178
            resultImg(i,j,1)=153;
        elseif img(i,j,1)< 229
            resultImg(i,j,1)= 204;
        else
            resultImg(i,j,1)=255;
        end        
    end
end

% green
for i=1 : sizeWidth
    for j=1 : sizeHeight
        if img(i,j,2)< 25
            resultImg(i,j,2)= 0;
        elseif img(i,j,2) < 76
            resultImg(i,j,2)=51;
        elseif img(i,j,2)< 127
            resultImg(i,j,2)= 102;
        elseif img(i,j,2) < 178
            resultImg(i,j,2)=153;
        elseif img(i,j,2)< 229
            resultImg(i,j,2)= 204;
        else
            resultImg(i,j,2)=255;
        end        
    end
end

% blue
for i=1 : sizeWidth
    for j=1 : sizeHeight
        if img(i,j,3)< 25
            resultImg(i,j,3)= 0;
        elseif img(i,j,3) < 76
            resultImg(i,j,3)=51;
        elseif img(i,j,3)< 127
            resultImg(i,j,3)= 102;
        elseif img(i,j,3) < 178
            resultImg(i,j,3)=153;
        elseif img(i,j,3)< 229
            resultImg(i,j,3)= 204;
        else
            resultImg(i,j,3)=255;
        end        
    end
end
figure, imshow(uint8(resultImg));

