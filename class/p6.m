clc;
close all;
clear;

image1 = imread("../benchmark/tulips.png");
image1 = rgb2gray(image1);

%figure, imshow(image1);
%figure, imshow(image2);
figure, imshow(image1);
image_size = size(image1);

for i = 1 : image_size(1,1)
    for j = 1 : image_size(1,2)
        if image1(i, j) > 50
            if image1(i,j) < 80
                image1(i, j ) = image1(i, j) + 30;
            end
        end
    end
end

figure, imshow(image1);