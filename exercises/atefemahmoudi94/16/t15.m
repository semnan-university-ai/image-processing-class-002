clc;
close all;
clear all;

img1=imread("airplane.png");
figure(1);
subplot(1,2,1);
imshow(img1);
title("input")
row=size(img1,1);
col=size(img1,2);
K=3;

for i=1:row
    for j=1:col
        for k=1:K
            if img1(i,j,k)<=51
                if img1(i,j,k)<=round((51-0)/2)
                    img1(i,j,k)=0;
                else
                    img1(i,j,k)=51;
                end
            elseif img1(i,j,k)<=102
                if img1(i,j,k)<=round((102-51)/2)
                    img1(i,j,k)=51;
                else
                    img1(i,j,k)=102;
                end
            elseif img1(i,j,k)<=153
                if img1(i,j,k)<=round((153-102)/2)
                    img1(i,j,k)=102;
                else
                    img1(i,j,k)=153;
                end
            elseif img1(i,j,k)<=204
                if img1(i,j,k)<=round((204-153)/2)
                    img1(i,j,k)=153;
                else
                    img1(i,j,k)=204;
                end
            elseif img1(i,j,k)<=255
                if img1(i,j,k)<=round((255-204)/2)
                    img1(i,j,k)=204;
                else
                    img1(i,j,k)=255;
                end
            end
        end
    end
end
subplot(1,2,2)
imshow(img1)
title("output")