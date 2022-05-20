clc;
clear all;
close;



a=imread('Lenna.png');
b=imread('text.jpg');
a=rgb2gray(a);
b=rgb2gray(b);
a=double(a);
b=double(b);
c1 = mod(a, 2);
c2 = mod(floor(a/2), 2);
c3 = mod(floor(a/4), 2);
c4 = mod(floor(a/8), 2);
c5 = mod(floor(a/16), 2);
c6 = mod(floor(a/32), 2);
c7 = mod(floor(a/64), 2);
c8 = mod(floor(a/128), 2);
  
v1 = mod(b, 2);
v2 = mod(floor(b/2), 2);
v3 = mod(floor(b/4), 2);
v4 = mod(floor(b/8), 2);
v5 = mod(floor(b/16), 2);
v6 = mod(floor(b/32), 2);
v7 = mod(floor(b/64), 2);
v8 = mod(floor(b/128), 2);

cc = (2 * (2 * (2 * (2 * (2 * (2 * (2 * c8 + c7) + c6) + c5) + c4) + c3) + v2) + v1);

g1 = mod(cc, 2);
g2 = mod(floor(cc/2), 2);
g3 = mod(floor(cc/4), 2);
g4 = mod(floor(cc/8), 2);
g5 = mod(floor(cc/16), 2);
g6 = mod(floor(cc/32), 2);
g7 = mod(floor(cc/64), 2);
g8 = mod(floor(cc/128), 2);

cc2 = (2 * (2 * (2 * (2 * (2 * (2 * (2 *  + 0) + 0) + 0) + 0) + 0) + g2) + g1);

[x,y]=size(cc2);
for i = 1 : x
    for j = 1 : y
        if cc2(i,j)>1
            cc3(i,j)=255;
        else
            cc3(i,j)=0;
        end
    end
end

imshow(uint8(cc3));
title('unhide  Image');