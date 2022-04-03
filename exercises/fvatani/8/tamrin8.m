clc
clear all
close all

image=uint8(zeros(1000,1000));  

for i=1:1000
    for j=1:1000
        image(i,j) = randi(255);
    end
end

figure,imshow(image)
