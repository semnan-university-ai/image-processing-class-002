clc;
close all;
clear;

img = imread("MATLAB/baboon.png");
img = rgb2gray(img);
figure, imshow(img);

img_siz = size(img);
sw = img_siz(1,1);
sh = img_siz(1,2);


figure,imshow(img);
hold on;
axis on;

random_x = randi(sw);
%xrr=xr;
random_y = randi(sh);
%yrr=yr;

s_x = [50 , 50 , 0, 0 ];
s_y = [50 , 0 , 0 , 50];


if random_x<(sh - 50) && random_y<(sw - 50)
    plot(s_x + random_x, s_y + random_y , 'b', 'MarkerSize', 10, 'LineWidth', 1);
    fill(s_x + random_x, s_y + random_y , 'w');
else
    while random_x > (sh - 50) || random_y > (sw - 50)
     random_x = randi(sh - 50);
     yr=randi(sw - 50);
     plot(s_x + random_x, s_y + random_y , 'b', 'MarkerSize', 10, 'LineWidth', 1);
     fill(s_x + random_x, s_y + random_y , 'w');
     break;
     
    end
  
end
