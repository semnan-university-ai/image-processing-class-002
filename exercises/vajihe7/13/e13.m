close all;
clear;
clc;

image=rgb2gray(imread("girl.png"));
subplot(2,3,1),imshow(image),title('Orginal');% Orginal 
[a, b] = size(image);
 

M = im2double(image);
N = [];

K = im2double(image);
%Mean 
for i=2:a-1
    for j=2:b-1
            N(1) = K(i-1,j-1);
            N(2) = K(i-1,j) ;
            N(3) = K(i-1,j+1);
            N(4) = K(i,j-1);
            N(5) = K(i,j+1);
            N(6) = K(i+1, j-1);
            N(7) = K(i+1,j);
            N(8) = K(i+1,j+1);
            K(i,j) = mean(N);
    end
end 
subplot(2,2,3),imshow(K),title('Add Mean filter ');%Mean 

%Median
for i=2:a-1
    for j=2:b-1
            N(1) = M(i-1,j-1);
            N(2) = M(i-1,j) ;
            N(3) = M(i-1,j+1);
            N(4) = M(i,j-1);
            N(5) = M(i,j+1);
            N(6) = M(i+1, j-1);
            N(7) = M(i+1,j);
            N(8) = M(i+1,j+1);
            M(i,j) = median(N);
    end
end 
subplot(2,2,4),imshow(M),title('Add Median filter');%Median