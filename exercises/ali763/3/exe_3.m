clc, clear;
image = imread('cameraman.tif');
I = uint8((length(image)-50)*rand(1,1));
for i = I:50+I
    for j = I:50+I
        image(i,j) = 255;
    end
end
imshow(image);
