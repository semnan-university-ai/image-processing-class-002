clc;
clear;
close all;

orimg= imread("Fruits.jpg");

imgSize=size(orimg);
x = imgSize(1,1);
y = imgSize(1,2);
resImg = zeros(x,y,3);


for i=1 : x
    for j=1 : y
        if orimg(i,j,1)< 25
            resImg(i,j,1)= 0;
        elseif orimg(i,j,1) < 76
            resImg(i,j,1)=51;
        elseif orimg(i,j,1)< 127
            resImg(i,j,1)= 102;
        elseif orimg(i,j,1) < 178
            resImg(i,j,1)=153;
        elseif orimg(i,j,1)< 229
            resImg(i,j,1)= 204;
        else
            resImg(i,j,1)=255;
        end        
    end
end


for i=1 : x
    for j=1 : y
        if orimg(i,j,2)< 25
            resImg(i,j,2)= 0;
        elseif orimg(i,j,2) < 76
            resImg(i,j,2)=51;
        elseif orimg(i,j,2)< 127
            resImg(i,j,2)= 102;
        elseif orimg(i,j,2) < 178
            resImg(i,j,2)=153;
        elseif orimg(i,j,2)< 229
            resImg(i,j,2)= 204;
        else
            resImg(i,j,2)=255;
        end        
    end
end


for i=1 : x
    for j=1 : y
        if orimg(i,j,3)< 25
            resImg(i,j,3)= 0;
        elseif orimg(i,j,3) < 76
            resImg(i,j,3)=51;
        elseif orimg(i,j,3)< 127
            resImg(i,j,3)= 102;
        elseif orimg(i,j,3) < 178
            resImg(i,j,3)=153;
        elseif orimg(i,j,3)< 229
            resImg(i,j,3)= 204;
        else
            resImg(i,j,3)=255;
        end        
    end
end

figure;
subplot(1,2,1);imshow(orimg);title('Original Image');
subplot(1,2,2);imshow(uint8(resImg));title('Resault Image');
