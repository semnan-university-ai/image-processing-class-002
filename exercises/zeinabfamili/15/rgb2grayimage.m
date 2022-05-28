clc;
close all;
clear;
image = imread('fruits.png');
[m,n,k] = size(image);
gimage = zeros(m,n);
for i = 1:m
    for j = 1:n
    gimage(i,j) = image(i,j,1)*0.299+ image(i,j,2)*0.577+ image(i,j,3)*0.144 ;
    end
end
figure;
subplot(1,2,1),imshow(uint8 (image));title ('orginal image');
subplot(1,2,2),imshow(uint8 (gimage));title('gray image');

            
        
