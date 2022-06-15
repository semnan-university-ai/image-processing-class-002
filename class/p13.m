clc;
close all;
clear;

new_x_value = 256;
new_y_value = 512;
img1 = imread("fr.jpg");


img1 = imresize(img1, [new_x_value new_y_value]);
figure, imshow(img1);
img2 = zeros(new_x_value, new_y_value);

for i = 1 : new_x_value
    for j = 1 : new_y_value
        img2(i,j) = img1(i,j,1);
    end
end

img2 = uint8(img2);

figure, imshow(img2);

for i = 1 : new_x_value
    for j = 1 : new_y_value
        img2(i,j) = img1(i,j,2);
    end
end

img2 = uint8(img2);

figure, imshow(img2);

for i = 1 : new_x_value
    for j = 1 : new_y_value
        img2(i,j) = img1(i,j,3);
    end
end

img2 = uint8(img2);

figure, imshow(img2);