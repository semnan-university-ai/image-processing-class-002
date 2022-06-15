clc;
close all;
clear;
image = imread('fruits.png');
[m,n,r] = size(image);
timage = image;
for i= 1:m
    for j = 1:n
        for k =1:r
            if  timage(i,j,k) < 51 && timage(i,j,k) > -1
                if timage(i,j,k) >= 26
                    timage(i,j,k) = 51;
                else
                    timage(i,j,k) = 0;
                end
            elseif  timage(i,j,k) < 102 
                if timage(i,j,k) >= 77
                    timage(i,j,k) = 102;
                else
                    timage(i,j,k) = 52;
                end
            elseif timage(i,j,k) < 153
                if timage(i,j,k) >= 128
                     timage(i,j,k) = 153;
                else 
                    timage(i,j,k) = 104; 
                end
            elseif timage(i,j,k) < 204
                if timage(i,j,k) >= 179
                     timage(i,j,k) = 204;
                else 
                    timage(i,j,k) = 155; 
                end
                elseif timage(i,j,k) < 255
                if timage(i,j,k) >= 230
                     timage(i,j,k) = 255;
                else 
                    timage(i,j,k) = 206; 
                end
            end
        end
    end
end
figure;
subplot(1,2,1),imshow(uint8(image));title ('orginal image');
subplot(1,2,2),imshow(uint8(timage));title ('truecolor image');
                    
    
