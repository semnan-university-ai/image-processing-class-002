clc, clear;
image = imread('cameraman.tif');
imshow(image)
for i = 1 : size(image,1)/2
    for j = 1: size(image,2)
           image(i,j) = 255 - image(i,j);        
    end
end
figure
imshow(image)
