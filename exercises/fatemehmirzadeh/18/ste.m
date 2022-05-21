clear;close all;clc;

img= imread('onion.png');
img=rgb2gray(img);
img2 = uint8(zeros(size(img)));
figure,
imshow(uint8(img)),
hold on
[row,col,chan] = size(img);


txt=imread('1.jpg');
figure, 
imshow(txt)
%%%%%%%%%%%resize
[x1,y1,z1]= size(img);
[x2,y2,z2]= size(txt);
if (x2>x1)|(y2>y1)
 txt= imresize(txt,[x1,y1]);
elseif (x2<x1)|(y2<y1)
  txt(x2+x1-x2,y2+y1-y2)=255;
end  
%%%bitplane%%%%
indub = double(img);
p1 = bitget(indub,1);
p2 = bitget(indub,2);
p3 = bitget(indub,3);
p4 = bitget(indub,4);
p5 = bitget(indub,5);
p6 = bitget(indub,6);
p7 = bitget(indub,7);
p8 = bitget(indub,8);

figure;
subplot(3,3,1); imshow(p1); title('Bit1');
subplot(3,3,2); imshow(p2); title('Bit2');
subplot(3,3,3); imshow(p3); title('Bit3');
subplot(3,3,4); imshow(p4); title('Bit4');
subplot(3,3,5); imshow(p5); title('Bit5');
subplot(3,3,6); imshow(p6); title('Bit6');
subplot(3,3,7); imshow(p7); title('Bit7');
subplot(3,3,8); imshow(p8); title('Bit8');
%%%%%%%%compress
for i = 1:1:row
    for j = 1:1:col
        img2(i,j) = bitand(img(i,j),240);
    end
end
figure, 
imshow(img2);
title('compress img');

%%%%%%%histogram 
indub2 = double(img);

imbed = 4;
msgsft = bitshift(indub,-(8-imbed));
showmsg = uint8 (msgsft);
showmsg = bitshift(showmsg, 8-imbed);

inzero = indub2;

for i = 1:imbed
    inzero = bitset(showmsg,i,0);
end

inz = double(inzero);
stgan = uint8(inz + msgsft);
figure, 
imshow(stgan); 
title('steganography');
imwrite(stgan,'stgan.bmp');

figure;
subplot(1,3,1); imhist(img); title('histogram of img');
subplot(1,3,2); imhist(stgan); title('histogram of stgn img');
subplot(1,3,3); imhist(histeq(img)); title('histeq of img');


