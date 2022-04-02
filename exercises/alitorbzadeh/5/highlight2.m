clc;
clear all;
close all;

pic0=imread("photo_2022-03-30_21-00-33.jpg");
figure(1);
imshow(pic0);
a=50;
c=size(pic0,1);
d=size(pic0,2);
e=size(pic0,3);

if e~=1
    pic0=rgb2gray(pic0);
    figure(2);
    imshow(pic0)
    for i0=1:c
        for i1=1:d
            pic0(i0,i1)=pic0(i0,i1)+a;
        end
    end
else
    figure(2);
    imshow(pic0)
    for i0=1:c
        for i1=1:d
            pic0(i0,i1)=pic0(i0,i1)+a;
        end
    end
end
figure(3);
imshow(pic0)