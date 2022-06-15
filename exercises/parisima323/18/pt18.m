clc;
clear all
close all


img= rgb2gray( imread('onion.png'));
Hidimg=rgb2gray( imread('photo_2022-05-21_01-38-39.jpg'));
[x1,y1,z1]= size(img);
[x2,y2,z2]= size(Hidimg);

if (x2>x1)||(y2>y1)
   Hidimg= imresize(Hidimg,[x1,y1]);
else
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
subplot (2,4,1)
imshow(img);
title(' original img');
subplot (2,4,2)
imhist(img)
title(' histogram original img');
subplot (2,4,3)
histeq(img)
title('histogram equalisation orginal img');

subplot (2,4,4)
imhist(histeq(img))

title(' orginal img after histogram equalization ');
subplot (2,4,5)
imshow(uint8(temp));
title('steganography');
subplot (2,4,6)
imhist(uint8(temp));
title(' histogram steganography');
subplot (2,4,7)
histeq(uint8(temp))
title(' histogram equalisation steganography');

subplot (2,4,8)
imhist(histeq(uint8(temp)))
title(' steganography  img after histogram equalisation ');

Compic1=b7 .* 128+b6 .* 64;

Compic2=b7 .* 128+b6 .* 64+b5 .*32 ;

Compic3=b7 .* 128+b6 .* 64+b5 .*32+b4.*16+b3.*8 ;
figure;
subplot (1,4,1)
imshow(uint8(Compic1));
title('Compressed pic b7-b6');
subplot (1,4,2)
imshow(uint8(Compic2));
title('Compressed pic b7-b6-b5 ');

subplot (1,4,3)
imshow(uint8(Compic3));
title('Compressed pic b7-b6-b5-b4-b3');

subplot (1,4,4)
imshow(img);
title('orginal pic');