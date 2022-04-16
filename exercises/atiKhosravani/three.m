clear;
close all;
clc;

img= imread('onion.png');
img=rgb2gray(img);

size=size(img);
Width = size(1,1);
Height = size(1,2);

figure,imshow(img)
hold on
axis on

xrandom=randi(Width);
yrandom=randi(Height);

x=[50 , 50 , 0, 0 ];
y=[50 , 0 , 0 , 50];


if xrandom<(Height-50) && yrandom<(Width-50)
    plot( x+xrandom, y+yrandom , 'b', 'MarkerSize', 10, 'LineWidth', 1);
    fill(x+xrandom,y+yrandom , 'w')
else
    while xrandom>(Height-50) || yrandom>(Width-50)
     xrandom=randi(Height-50);
     yrandom=randi(Width-50);
     plot( x+xrandom, y+yrandom , 'b', 'MarkerSize', 10, 'LineWidth', 1);
     fill(x+xrandom,y+yrandom , 'w')
     break;
     
end
  
end