close all;
clear;
clc;

IMG1 = zeros(1000,1000);

[I,J] = size(IMG1);

for i = 1:I
    for j = 1:J
        IMG1(i,j) = rand();
    end
end

figure , imshow(IMG1);
