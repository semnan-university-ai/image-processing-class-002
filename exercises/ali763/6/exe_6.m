clc, clear;
image = imread('cameraman.tif');
image = double(image);
 for i=1:254
     for j=1:254
       image(i+1,j+1) =sqrt(image(i,j+1)+image(i+1,j)+image(i+1,j+2)+image(i+2,j+1));
     end
 end
imshow(uint8(image))
