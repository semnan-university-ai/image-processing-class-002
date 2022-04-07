

clc;
clear;
close all;



PICpng = imread('boat.png');
[rows columns numberOfColorChannels] = size(PICpng)
x = columns/2
y = rows/2
imshow(PICpng);  
centx = x ;
centy = y ;
r = 60;
hold on;
theta = 0 : (2 * pi / 10000) : (2 * pi);
pline_x = r * cos(theta) + centx;
pline_y = r * sin(theta) + centy;
k = ishold;
plot(pline_x, pline_y, 'b-', 'LineWidth', 3);
hold off;