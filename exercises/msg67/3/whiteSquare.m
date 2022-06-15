clear;
close all;
clc;
%........................

img= imread("benchmark/cat.png");

size=size(img);
sizeWidth = size(1,1);
sizeHeight = size(1,2);




figure,imshow(img),hold on
axis on

xr=randi(sizeWidth);
xrr=xr;
yr=randi(sizeHeight);
yrr=yr;

x=[50 , 50 , 0, 0 ];
y=[50 , 0 , 0 , 50];


if xr<(sizeHeight-50) && yr<(sizeWidth-50)
    plot( x+xr, y+yr , 'b', 'MarkerSize', 10, 'LineWidth', 1);
    fill(x+xr,y+yr , 'w')
else
    while xr>(sizeHeight-50) || yr>(sizeWidth-50)
     xr=randi(sizeHeight-50);
     yr=randi(sizeWidth-50);
     plot( x+xr, y+yr , 'b', 'MarkerSize', 10, 'LineWidth', 1);
     fill(x+xr,y+yr , 'w')
     break;
     
end
  
end


