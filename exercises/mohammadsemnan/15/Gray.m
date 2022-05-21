clc;
clear all;
close;

A = imread('monarch.png');
x=size(A,1);
y=size(A,2);

for i=1:x
    for j=1:y
        VV(i,j)=(A(i,j,1)*0.299)+(A(i,j,2)*0.567)+(A(i,j,3)*0.134);
    end
end
imshow(VV);
