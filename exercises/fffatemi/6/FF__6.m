close all;
clear;
clc;

IMG1 = imread("The-original-cameraman-image_W640.jpg");

IMG11 = double(IMG1);

figure , imshow(IMG1) , title('Original');

[I,J] = size(IMG11);

IMG2 = zeros(I,J);
A = zeros (I,J);
for i = 2:I-1
    for j = 2:J-1
        A(i,j) = (IMG11(i-1,j) + IMG11(i+1,j) + IMG11(i,j-1) + IMG11(i,j+1)) ;

        IMG2(i,j) =round(sqrt(A(i,j)/4));
    end
end

figure,imshow(uint8(IMG2)),title('Output');
