clc;
close all;
clear;

img1 = imread('MATLAB/frymire.png');
imgsiz = size(img1);
x = imgsiz(1,1);
y = imgsiz(1,2);

new1 = zeros(x, y);
new2 = zeros(x, y);
new3 = zeros(x, y);
%first
for i=1:x
    for j=1:y
        new1(i,j) = (img1(i,j,1) + img1(i,j,2) + img1(i,j,3))/3 ;
    end
end
figure, imshowpair(img1, new1, 'montage');

%second
for i=1:x
    for j=1:y
        new2(i,j) = (img1(i,j,1)/3) + (img1(i,j,2)/3) + (img1(i,j,3)/3 );
    end
end
figure, imshowpair(img1, new2, 'montage');

%third
for i=1:x
    for j=1:y
        new3(i,j) = (img1(i,j,1)*0.299 + img1(i,j,2)*0.577 + img1(i,j,3)*0.144);
    end
end
figure, imshowpair(img1, new3, 'montage');