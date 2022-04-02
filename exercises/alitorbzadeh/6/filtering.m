clc;
clear all;
close all;


pic0=imread("photo_2022-03-30_21-00-33.jpg");
figure(1);
imshow(pic0)

if size(pic0,3)~=1
    pic0=rgb2gray(pic0);
    figure(2);
    imshow(pic0);
    pic1=padding2(pic0);
    figure(3);
    imshow(pic1)
    row=size(pic1,1);
    col=size(pic1,2);
    for i0=2:(row-1)
        for i1=2:(col-1)
            sum=floor(sqrt(double(pic1(i0,(i1-1)))))+...
                floor(sqrt(double(pic1((i0+1),i1))))+...
                floor(sqrt(double(pic1(i0,(i1+1)))))+...
                floor(sqrt(double(pic1((i0-1),i1))));
            avr=uint8(sum/4);
            pic1(i0,i1)=avr;
        end
    end
else
    pic1=padding2(pic0);
    figure(3);
    imshow(pic1)
    row=size(pic1,1);
    col=size(pic1,2);
    for i0=2:(row-1)
        for i1=2:(col-1)
            sum=floor(sqrt(double(pic1(i0,(i1-1)))))+...
                floor(sqrt(double(pic1((i0+1),i1))))+...
                floor(sqrt(double(pic1(i0,(i1+1)))))+...
                floor(sqrt(double(pic1((i0-1),i1))));
            avr=uint8(sum/4);
            pic1(i0,i1)=avr;
        end
    end
end
figure(4);
imshow(pic1);