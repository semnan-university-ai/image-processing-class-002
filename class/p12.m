clc;
close all;
clear;

new_x_value = 256;
new_y_value = 512;
img1 = imread("fr.jpg");


img1 = imresize(img1, [new_x_value new_y_value]);
figure, imshow(img1);
% image_size = size(img1);

for i = 1 : new_x_value
    for j = 1 : new_y_value
        
        for k = 1 : 3
            
            if img1(i, j, k) < 51 && img1(i, j, k) > -1
                img1(i, j, k) = 0;
            elseif img1(i, j, k) < 102 && img1(i, j, k) >= 51
                img1(i, j, k) = 51;
            elseif img1(i, j, k) < 153 && img1(i, j, k) >= 102
                img1(i, j, k) = 102;
            elseif img1(i, j, k) < 204 && img1(i, j, k) >= 153 
                img1(i, j, k) = 153;
            elseif img1(i, j, k) > 153 && img1(i, j, k) >= 204
                img1(i, j, k) = 204;
            else
                img1(i, j, k) = 255;
            end
            
        end
        
    end
end


figure, imshow(img1);