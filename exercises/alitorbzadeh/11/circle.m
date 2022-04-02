clc;
clear all;
close all;
r=10000;
pic0=imread("photo_2022-03-30_21-00-33.jpg");

figure(1)
imshow(pic0);

if size(pic0,3)~=1
    pic0=rgb2gray(pic0);
    a=size(pic0,1);
    b=size(pic0,2);
    a0=floor(a/2);
    b0=floor(b/2);
    for i0=1:a
        for i1=1:b
            eq=((i0-a0)^2)+((i1-b0)^2);
            if eq<=r
                pic0(i0,i1)=255;
            end
        end
    end
else
    a=size(pic0,1);
    b=size(pic0,2);
    a0=floor(a/2);
    b0=floor(b/2);
    for i0=1:a
        for i1=1:b
            eq=((i0-a0)^2)+((i1-b0)^2);
            if eq<=r
                pic0(i0,i1)=255;
            end
        end
    end
end
figure(2);
imshow(pic0)