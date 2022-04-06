clc;
clear all;

numbers = [0 10 20 30 40 50 60 70 80 90 100 110 120 130 140 150 160 170 180 190 200 210 220 230 240 250 255];
numbersSize = size(numbers);

x = 1000;
y = 1000;
imageResult = zeros(x, y);

for i = 1 : x
    for j = 1 : y
        tempIndex = (numbersSize - 2).* rand(1) + 1;
        imageResult(i, j) = numbers( round(tempIndex(2)) );
        if(imageResult(i, j) > 255)
            imageResult(i, j) = 255;
        end
    end
end

image = uint8(imageResult);

figure, imshow(image);