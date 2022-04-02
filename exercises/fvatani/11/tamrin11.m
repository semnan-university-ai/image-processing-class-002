clc
clear all
close all

image=imread('pears.png'); 
image=rgb2gray(image); 
image2=image;

r = 100;
[x y] = size(image);

xunit = r * cos(0:.001:2*pi) + x/2;
yunit = r * sin(0:.001:2*pi) + y/2;
        
for i=1:size(xunit,2)
    image(floor(xunit(i)),floor(yunit(i)))=0;
end

for i=1:x
    for j=1:y
        if ((i-x/2)^2)+((j-y/2)^2)<(r^2);  
            image2(i,j) = 255; 
        end
    end
end

figure,imshow(image);
figure,imshow(image2);