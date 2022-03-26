clc
clear all
close all

image=imread('pears.png'); 
image=rgb2gray(image); 

random_x = randi(size(image,1));
random_y = randi(size(image,2));

for x=1:size(image,1)
            for y=1:size(image,2)
              
                if x==random_x && y==random_y
                    if (random_x+49) < size(image,1) &&  (random_y+49) < size(image,2)
                        for i=0:49
                            for j=0:49
                                image(random_x+i,random_y+j)=255;     
                            end
                        end
                        break
                    elseif (random_x+49) < size(image,1) &&  (random_y+49) > size(image,2)
                        for i=0:49
                            for j=0:49
                                image(random_x+i,random_y-j)=255;     
                            end
                        end
                        break  
                        
                    elseif (random_x+49) > size(image,1) &&  (random_y+49) < size(image,2)
                    for i=0:49
                            for j=0:49
                                image(random_x-i,random_y+j)=255;     
                            end
                    end
                        break
                    elseif (random_x+49) > size(image,1) &&  (random_y+49) > size(image,2)
                    for i=0:49
                            for j=0:49
                                image(random_x-i,random_y-j)=255;     
                            end
                    end
                        break
                    end
                end
                
                
            end
end

figure,imshow(image)