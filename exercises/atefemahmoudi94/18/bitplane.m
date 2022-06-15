clc
clear all
close all
img= rgb2gray( imread('onion.jpg'));
Hidimg=rgb2gray( imread('poem.jpg'));
[x1,y1,z1]= size(img);
[x2,y2,z2]= size(Hidimg);

if (x2>x1)|(y2>y1)
   Hidimg= imresize(Hidimg,[x1,y1]);
elseif (x2<x1)|(y2<y1)
   Hidimg1(x2+x1-x2,y2+y1-y2)=255;
end  
b7=double(bitget(img, 8));
b6=double(bitget(img, 7));
b5=double(bitget(img, 6));
b4=double(bitget(img, 5));
b3=double(bitget(img, 4));
b2=double(bitget(img, 3));
b1=double(bitget(img, 2));
b0=double(bitget(img, 1));
H8=double(bitget(Hidimg, 8));
H7=double(bitget(Hidimg, 7));
temp=b7 .* 128+b6 .* 64+b5 .*32+b4 .*16 + b3 .*8 + b2 .*4+H8 .*2 +H7; 
figure;
imshow(b7)
title('bit plane 7');
figure;
subplot (2,3,1)
imshow(img);
title(' original img');
subplot (2,3,2)
%imhist(img)
title(' histogram original img');
subplot (2,3,3)
%histeq(img)
title('histogram equalisation orginal img');
subplot (2,3,4)
imshow(uint8(temp));
title('steganography');
subplot (2,3,5)
%imhist(temp)
title(' histogram steganography');
subplot (2,3,6)
%histeq(temp)
title(' histogram equalisation steganography');

Compic=b7 .* 128+b6 .* 64+b5 .*32 ; 
figure;
subplot (1,2,1)
imshow(uint8(Compic));
title('Compressed pic');
subplot (1,2,2)
imshow(img);
title('orginal pic');