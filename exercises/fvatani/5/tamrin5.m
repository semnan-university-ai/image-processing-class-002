clc
clear all
close all

image=imread('pears.png'); 
image=rgb2gray(image); 

for x=1:size(image,1)
        for y=1:size(image,2)
               brightness = floor(image(x,y)*(50/100));
               if image(x,y) + brightness >= 255
                   image(x,y) = 255;
               else               
                 image(x,y) = image(x,y) + brightness;
               end
        end
end

figure,imshow(image)
