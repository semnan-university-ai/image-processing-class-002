clc;
close all;
clear all;
pic = imread('onion.png');

[x,y,z] = size(pic);


for i = 1:x
    for j = 1:y
        for k = 1:3
            if pic(i, j, k) < 51 && pic(i, j, k) >=0
                Npic(i, j, k) = 0;
            elseif pic(i, j, k) < 102 && pic(i, j, k) >= 51
                 Npic(i, j, k) = 51;
            elseif pic(i, j, k) < 153 && pic(i, j, k) >= 102
                 Npic(i, j, k) = 102;
            elseif pic(i, j, k) < 204 && pic(i, j, k) >= 153 
                Npic(i, j, k) = 153;
            elseif pic(i, j, k) > 153 && pic(i, j, k) >= 204
                Npic(i, j, k) = 204;
            else
                Npic(i, j, k) = 255;
            end
            
        end
        
    end
end

figure
subplot (1,2,1);imshow(pic);
subplot (1,2,2);imshow(uint8(Npic));
