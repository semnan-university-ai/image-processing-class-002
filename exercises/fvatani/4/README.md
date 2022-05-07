clc
clear all
close all

image=imread('pears.png'); 
image=rgb2gray(image); 

for x=1:(size(image,1)/2)
            for y=1:size(image,2)             
               image(x,y) = 255 - image(x,y); 
            end
end

figure,imshow(image)
