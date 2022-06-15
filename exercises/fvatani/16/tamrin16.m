clc;
clear all;
close all;

image = imread('pears.png');

for i = 1 : size(image,1)
    for j = 1 : size(image,2)
        for k = 1 : 3
  
            if image(i, j, k) < 51 && image(i, j, k) > -1
                if image(i, j, k) <= 25
                   image(i, j, k) = 0;
                else
                   image(i, j, k) = 51;
                end
                
            elseif image(i, j, k) < 102 && image(i, j, k) >= 51
                if image(i, j, k) <= 76
                   image(i, j, k) = 51;
                else
                   image(i, j, k) = 102;
                end
                
            elseif image(i, j, k) < 153 && image(i, j, k) >= 102
                if image(i, j, k) <= 127
                   image(i, j, k) = 102;
                else
                   image(i, j, k) = 153;
                end   
                
            elseif image(i, j, k) < 204 && image(i, j, k) >= 153 
                if image(i, j, k) <= 178
                   image(i, j, k) = 153;
                else
                   image(i, j, k) = 204;
                end
            
            elseif image(i, j, k) > 255 && image(i, j, k) >= 204
                if image(i, j, k) <= 229
                   image(i, j, k) = 204;
                else
                   image(i, j, k) = 255;
                end
            
            else
                image(i, j, k) = 255;
            end
            
        end
        
    end
end

figure, imshow(image);
