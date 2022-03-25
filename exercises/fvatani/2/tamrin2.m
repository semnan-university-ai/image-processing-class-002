clc
clear all
close all

i=imread('pears.png'); 
i=rgb2gray(i); 

p=input('Input window size of filter:');  
p=floor(p/2);
pad=uint8(zeros(size(i)+(2*p)));  

for x=1:size(i,1)
            for y=1:size(i,2)
                pad(x+p,y+p)=i(x,y); 
                
                if y==1 
                    for z=0:(p-1)
                        pad(x+p,y+z)=i(x,y);
                    end
                end
                
                if y==size(i,2)
                    for z=1:p
                        pad(x+p,y+(p+z))=i(x,y);
                    end
                end
                                
            end                
end

for x=1:size(pad,1)
            for y=1:size(pad,2)
                
                if x==(p+1)
                    for z=1:p
                        pad(x-z,y)=pad(x,y);
                    end
                end
                
                                
                if x==(size(i,1)+p)
                    for z=1:p
                        pad(x+z,y)=pad(x,y);
                    end
                end
                
            end
end
                
figure,imshow(pad)
