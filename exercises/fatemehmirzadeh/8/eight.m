clc;
clear all;

x = 1000;
y = 1000;
res = zeros(x, y);

for i = 1 : x
    for j = 1 : y
        res(i,j)=  randi(255);
        end
    end


image = uint8(res);

figure, imshow(image);