clc;
clear;
close all;

F=[];

pwd
currentFolder = pwd;
for i=1:5
    x= imread(strcat(strcat(currentFolder, '\data\',num2str(i),'.jpg')));
    figure(i)
    subplot(1,3,1)
    imshow (x)
    title (' Main image ','color','b','FontSize', 12);
    x=rgb2gray(x);
    filter=fspecial ('gaussian', 15, 0.00000000001);
    kx=imfilter(x, filter);
    subplot(1,3,2)
    imshow (kx)
    title ('Grayscale Image','color','black','FontSize', 12);
    subplot(1,3,3)
    imhist (kx);
    [m,n]=imhist (kx);
    F(:,i)=m;
    
    title ('Histogram of image','color','b','FontSize', 10);

end


MoneyRecognizer(F);
