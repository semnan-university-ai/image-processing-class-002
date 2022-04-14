clc
clear all
close all

image=imread('pears.png'); 
image=rgb2gray(image); 
p=1;
pad=uint8(zeros(size(image)+2*p));  
result_image=uint8(zeros(size(image,1),size(image,2)));  

for x=1:size(image,1)
     for y=1:size(image,2)
          pad(x+p,y+p)=image(x,y); 
     end
end

for x=1:size(result_image,1)
     for y=1:size(result_image,2)
            result = 0;
            
            result = sqrt(double(pad(x+p,y)))+ sqrt(double(pad(x,y+p)))+ sqrt(double(pad(x+p+1,y+p)))+ sqrt(double(pad(x+p,y+p+1)));
            result_image(x,y)= floor(result);
                       
     end
end

figure,imshow(result_image);


