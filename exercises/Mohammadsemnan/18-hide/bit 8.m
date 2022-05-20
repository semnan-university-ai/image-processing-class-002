clc;
clear all;
close;


a=imread('Lenna.png');
b=imread('text.jpg');
a=rgb2gray(a); 
b=rgb2gray(b);

[x,y]=size(a);
for i = 1 : x
    for j = 1 : y
        binary = de2bi(a(i,j),8);
        c(i,j) = binary(8);
    end
end
imshow(double(c));
imwrite(double(c), 'bit.png');