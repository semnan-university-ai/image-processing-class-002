clc;
close all;
clear all;

        image1= imread('s.png');
        image1=rgb2gray(image1);
      
        subplot(4,2,1),imshow(image1)
        subplot(4,2,2),imhist(image1)
        
        image2= imread('z.png');
        image2=rgb2gray(image2);
        
        subplot(4,2,3),imshow(image2)
        subplot(4,2,4),imhist(image2)
        
        image3= imread('a.png');
        image3=rgb2gray(image3);
      
        subplot(4,2,5),imshow(image3)
        subplot(4,2,6),imhist(image3)
        
        image4= imread('sh.png');
        image4=rgb2gray(image4);
      
        subplot(4,2,7),imshow(image4)
        subplot(4,2,8),imhist(image4)
