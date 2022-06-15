function [input1, input2] = Stegano(input1, input2)

[input1, input2] = changesize(input1, input2);

indub = double(input1);

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

indub2 = double(input2);
figure, imshowpair(input1,input2, 'montage');


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
subplot(2,2,1); imhist(input1); title('histogram of input image');
subplot(2,2,2); imhist(stgan); title('histogram of steganed image');
subplot(2,2,3); imhist(histeq(input1)); title('equ histogram of input image');
subplot(2,2,4); imhist(histeq(stgan)); title('equ histogram of steganed image');
end