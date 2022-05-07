clc;
close all;
clear all;

img1=imread("photo_2022-03-30_21-00-33.jpg");
figure(1);
imshow(img1);

row=size(img1,1);
col=size(img1,2);
Channels=3;

for i=1:row
    for j=1:col
        for k=1:Channels
            if img1(i,j,k)<=51
                c0=round((51-0)/2);
                if img1(i,j,k)<=c0
                    img1(i,j,k)=0;
                else
                    img1(i,j,k)=51;
                end
            elseif img1(i,j,k)<=102
                c0=round((102-51)/2);
                if img1(i,j,k)<=c0
                    img1(i,j,k)=51;
                else
                    img1(i,j,k)=102;
                end
            elseif img1(i,j,k)<=153
                c0=round((153-102)/2);
                if img1(i,j,k)<=c0
                    img1(i,j,k)=102;
                else
                    img1(i,j,k)=153;
                end
            elseif img1(i,j,k)<=204
                c0=round((204-153)/2);
                if img1(i,j,k)<=c0
                    img1(i,j,k)=153;
                else
                    img1(i,j,k)=204;
                end
            elseif img1(i,j,k)<=255
                c0=round((255-204)/2);
                if img1(i,j,k)<=c0
                    img1(i,j,k)=204;
                else
                    img1(i,j,k)=255;
                end
            end
        end
    end
end

figure(2);
imshow(img1)