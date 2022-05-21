clear;
close all;
clc;

orimg= imread("Fruits.jpg");
orimg=rgb2gray(orimg);
newImg = uint8(zeros(size(orimg)));
figure,imshow(uint8(orimg)),hold on
[row,col,chan] = size(orimg);

poem=imread("Poem.jpg");


[x1,y1,z1]= size(orimg);
[x2,y2,z2]= size(poem);
if (x2>x1)|(y2>y1)
 poem= imresize(poem,[x1,y1]);
elseif (x2<x1)|(y2<y1)
  poem(x2+x1-x2,y2+y1-y2)=255;
end  



doubled_orimage = double(orimg);

p1 = bitget(doubled_orimage,1);
p2 = bitget(doubled_orimage,2);
p3 = bitget(doubled_orimage,3);
p4 = bitget(doubled_orimage,4);
p5 = bitget(doubled_orimage,5);
p6 = bitget(doubled_orimage,6);
p7 = bitget(doubled_orimage,7);
p8 = bitget(doubled_orimage,8);

figure;
subplot(3,3,1); imshow(p1); title('Bitplane 1');
subplot(3,3,2); imshow(p2); title('Bitplane 2');
subplot(3,3,3); imshow(p3); title('Bitplane 3');
subplot(3,3,4); imshow(p4); title('Bitplane 4');
subplot(3,3,5); imshow(p5); title('Bitplane 5');
subplot(3,3,6); imshow(p6); title('Bitplane 6');
subplot(3,3,7); imshow(p7); title('Bitplane 7');
subplot(3,3,8); imshow(p8); title('Bitplane 8');

for i = 1:1:row
    for j = 1:1:col
        newImg(i,j) = bitand(orimg(i,j),240);
    end
end
figure, imshow(newImg);title('Compressed image');


doubled_orimage2 = double(orimg);

imbed = 4;
msgsft = bitshift(doubled_orimage,-(8-imbed));
show = uint8 (msgsft);
show = bitshift(show, 8-imbed);

inzero = doubled_orimage2;

for i = 1:imbed
    inzero = bitset(show,i,0);
end

inzero = double(inzero);
stgnimg = uint8(inzero + msgsft);
figure, imshow(stgnimg); title('Steganography of Images');
imwrite(stgnimg,'stgan.bmp');

figure;
subplot(3,1,1); imhist(orimg); title('Orginal picture Histogram');
subplot(3,1,2); imhist(stgnimg); title('Steganed picture Histogram');
subplot(3,1,3); imhist(histeq(orimg)); title('Equalized Histogram');


