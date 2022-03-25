clc
clear all
close all

image=imread('pears.png'); 
image=rgb2gray(image); 

for x=1:size(image,1)
            for y=1:size(image,2)
               brightness = image(x,y)*(50/100);
               if brightness >= 255
                   brightness = 255;
               end               
               image(x,y) = image(x,y) + brightness; 
            end
end

figure,imshow(image)