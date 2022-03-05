clc;
clear;
close all;

% image1 = imread("cm.png");
% image2 = im2bw(image1, 0.6);
%image1 = imread("fr.jpg");
%image4 = rgb2gray(image1);
%image2 = gray2rgb(image4); # error
%image3 = im2bw(image2, 0.8);
%figure, imshow(image4);
%figure, imshow(image3);

image1 = imread("fr.jpg");
image1 = rgb2gray(image1);

%image1 = imread("cm.png");

figure, imshow(image1);
image_size = size(image1);

for i = 1 : image_size(1,1)
    for j = 1 : image_size(1,2)
        if image1(i, j) < 150
            image1(i, j ) = 0;
        else
            image1(i, j) = 255;
        end
    end
end

figure, imshow(image1);

%image2 = im2bw(image1, 0.6);


