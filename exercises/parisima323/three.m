clc 
clear all 
close all 
pic = imread('onion.png');
pic =rgb2gray(pic);
[m,n]=size(pic);
npic = pic;
while (1)

    i= randi(m);
    j=randi(n-1);
    if ((i+50<m) & (j+50<n))
        break;
    end
end 
npic=pic;
npic(i:i+50,j:j+50)=255;
imshow(npic)