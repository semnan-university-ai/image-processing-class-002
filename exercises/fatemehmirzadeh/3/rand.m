clc;clear;close all;
img = imread('boat.png');
imshow(img);
[m n]=size(img);
while (1)
    x= randi(m);
    y=randi(n-1);
    if ((x+50<m) & (y+50<n))
        break;
    end
end
img(x:x+50,y:y+50)=255;
imshow(img);