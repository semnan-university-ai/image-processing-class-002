clc;clear;close all;
img= imread('boat.png');
subplot(1,2,1);
imshow(img);
title('original img');
[x,y]=size(img);
padd=zeros(x+2,y+2);
%padding up
for i=1
    for j=1 : y
        padd(i,j+2)= img(i,j); 
    end
end    
%padding down
for i=x
    for j=1 : y
        padd(i+2,j+1)= img(i,j); 
    end
end    
%padding right
for i=1 : x
    for j=y
        padd(i+1,j+2)= img(i,j); 
    end
end 
%padding left
for i=1 : x
    for j=1
        padd(i,j)= img(i,j); 
    end
end 
subplot(1,2,2);
imshow(uint8(padd));
title('result image');