clear;
close all;
clc;
%........................

img= imread("benchmark/cat.png");

size=size(img);
sizeWidth = size(1,1);
sizeHeight = size(1,2);


r=200;

figure,imshow(uint8(img)),hold on
axis on
ang=0:0.001:2*pi; 
xp=r*cos(ang);
yp=r*sin(ang);
plot((sizeHeight/2)+xp,(sizeWidth/2)+yp, 'r', 'MarkerSize', 1, 'LineWidth', 10);
% second way
pos = [(sizeHeight/2)-(100) (sizeWidth/2)-(100) 200 200];
rectangle('Position',pos,'Curvature',[1 1],'FaceColor',[.1 .9 .1],'EdgeColor','b',...
    'LineWidth',5)
axis equal


