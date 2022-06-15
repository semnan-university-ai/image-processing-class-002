clc;
clear;
close all;
%%
root = '../test/10/';
path = '*.jpg';
money = dir([root path]);
len = max(size(money));
%%
[test_matrix, RGB, maxRGB, minRGB] = Train10000();
%%
 for i =1 : len
     img = imread([root money(i).name]);
     imges = size(img);
     [Rm ,Gm ,Bm] = MeanRGB(img);
     for l = 1: imges(1)
         for k = 1 : imges(2)
             R1 = double(img(l,k,1));
             G1 = double(img(l,k,2));
             B1 = double(img(l,k,3));
         end
     end
     
     temp = double(round(ColorDistance(R1, G1, B1, RGB(1, 1), RGB(1, 2), RGB(1, 3))));
     if (minRGB <= temp & temp <= maxRGB)
         figure, imshow(uint8(img)), title('10000 Toman');
     else
         figure, imshow(uint8(img)), title('No Match');
     end
     
 end
