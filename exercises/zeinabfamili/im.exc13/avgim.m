clc;
close all;
clear;
image = imread('10.jpg');
image1 = rgb2gray(image);
[a,b] = size(image1);
image2 = zeros(a+6,b+6);
image2(4:end-3,4:end-3) = image1;
[m,n] = size(image2)
matrix = ones(7,7);
image3 = zeros(a,b);
for i= 4 : m-3
    for j= 4 : n-3
        mi=0;
        for k1 = 1 : 7
            for k2 = 1 : 7
                s = matrix(k1,k2)*image2(i-4+k1,j-4+k2);
                mi = mi + s;
            end           
        end
        image3(i-3,j-3)= round(mi/49);
    end
end

figure;
%subplot(1,2,1),imshow(uint8 (image1))
subplot(1,2,1), imshow(uint8 (image2));
title ('padding image');
subplot(1,2,2), imshow(uint8 (image3));
title('mean filter');

