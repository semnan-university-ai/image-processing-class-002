clc;
clear;
close all;
img = imread('spring.png') ;
img = rgb2gray(img) ;
L = 50 ;   % length
B = 50 ;   % breadth 
R = [0 0 ; L 0 ; L B ; 0 B] ; % random Square at locations 
N = 1 ;   % number of Squares
idx = randsample(1:numel(img),N) ; 
[idx,idy] = ind2sub(size(img),idx) ;
% draw coordinates
imshow(img)
hold on;
for i=1:N
    patch(idx(i)+R(:,1),idy(i)+R(:,2),'w')
end