clc
close
clear
im=imread('lena.png');
im=rgb2gray(im);
im_center=[size(im,1)/2,size(im,1)/2];
r_circle=5000;
    for i=1:size(im,1)
        for j=1:size(im,2)
            area(i,j)=((i-im_center(1,1))^2)+((j-im_center(1,2))^2);
            if area(i,j)<r_circle
                im(i,j)=255;
            end
        end
    end   
imshow(im);
