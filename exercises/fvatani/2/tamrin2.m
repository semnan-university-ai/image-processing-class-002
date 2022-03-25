clc
clear all
close all

image=imread('pears.png'); 
image=rgb2gray(image); 

p=input('Input window size to padding:');  
p=floor(p/2);
pad_image=uint8(zeros(size(image)+(2*p)));  

for x=1:size(image,1)
            for y=1:size(image,2)
                pad_image(x+p,y+p)=image(x,y); 
                
                if y==1 
                    for z=0:(p-1)
                        pad_image(x+p,y+z)=image(x,y);
                    end
                end
                
                if y==size(image,2)
                    for z=1:p
                        pad_image(x+p,y+(p+z))=image(x,y);
                    end
                end
                                
            end                
end

for x=1:size(pad_image,1)
            for y=1:size(pad_image,2)
                
                if x==(p+1)
                    for z=1:p
                        pad_image(x-z,y)=pad_image(x,y);
                    end
                end
                
                                
                if x==(size(image,1)+p)
                    for z=1:p
                        pad_image(x+z,y)=pad_image(x,y);
                    end
                end
                
            end
end
                
figure,imshow(pad_image)
