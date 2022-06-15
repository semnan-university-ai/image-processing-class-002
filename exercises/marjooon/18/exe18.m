clear;
close all;
clc;
%%first pic
img= imread('lena.png');
img=rgb2gray(img);
new_image = uint8(zeros(size(img)));
figure,imshow(uint8(img)),hold on
[row,col,chan] = size(img);
%%second pic
textimg=imread('text.jpg');
figure, imshow(textimg)

%%%changesize

[x1,y1,z1]= size(img);
[x2,y2,z2]= size(textimg);
if (x2>x1)|(y2>y1)
 textimg= imresize(textimg,[x1,y1]);
elseif (x2<x1)|(y2<y1)
  textimg(x2+x1-x2,y2+y1-y2)=255;
end  


%%%%bitplan of first pic

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
subplot(3,3,1); imshow(p1); title('Bitplane1');
subplot(3,3,2); imshow(p2); title('Bitplane2');
subplot(3,3,3); imshow(p3); title('Bitplane3');
subplot(3,3,4); imshow(p4); title('Bitplane4');
subplot(3,3,5); imshow(p5); title('Bitplane5');
subplot(3,3,6); imshow(p6); title('Bitplane6');
subplot(3,3,7); imshow(p7); title('Bitplane7');
subplot(3,3,8); imshow(p8); title('Bitplane8');

%%%compress pic
for i = 1:1:row
    for j = 1:1:col
        new_image(i,j) = bitand(img(i,j),240);
    end
end
figure, imshow(new_image);title('compressed image');

%%%his pic

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
figure, imshow(stgan); title('steganography of images');
imwrite(stgan,'stgan.bmp');

figure;
subplot(2,2,1); imhist(img); title('histogram of orginal pic');
subplot(2,2,2); imhist(stgan); title('histogram of steganed pic');
subplot(2,2,3); imhist(histeq(img)); title('equ histogram of pic');
subplot(2,2,4); imhist(histeq(img)); title('equ histogram of pic');



