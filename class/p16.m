clc;
close all;
clear;

new_x_value = 256;
new_y_value = 512;
img1 = imread("fr.jpg");


img1 = imresize(img1, [new_x_value new_y_value]);
figure, imshow(img1);
img2 = zeros(new_x_value, new_y_value);
temp = 0;

for i = 1 : new_x_value
    for j = 1 : new_y_value
        temp = 0;
        for k = 1 : 3
           temp = temp + uint16(img1(i, j, k));
        end
        img2(i,j) = uint8(round(temp / 3));
        
        % img2 = uint8( uint16(img1(i, j, 1)) + uint16(img1(i, j, 2)) + uint16(img1(i, j, 3)) )
    end
end
img2 = uint8(img2);
figure, imshow(img2);