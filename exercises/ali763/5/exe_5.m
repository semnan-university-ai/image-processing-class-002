clc, clear, close;
image = imread('cameraman.tif');
imshow(image)
for i = 1 : size(image,1)
    for j = 1: size(image,2)
         image(i,j) = 50 + image(i,j);
    end
end
figure
imshow(image)
