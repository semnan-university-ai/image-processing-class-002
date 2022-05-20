function [in1, in2] = funs(in1, in2)

[in1, in2] = taghiresize(in1, in2);

indub1 = double(in1);
bitt8 = bitget(indub1,8);
figure;

subplot(1,1,1); imshow(bitt8); title('Bitplane8');

indub2 = double(in2);
figure, imshowpair(in1,in2, 'montage');
imbed = 4;
msgsft = bitshift(indub1,-(8-imbed));
showmsg = uint8 (msgsft);
showmsg = bitshift(showmsg, 8-imbed);

inzero = indub2;

for i = 1:imbed
    inzero = bitset(showmsg,i,0);
end

inz = double(inzero);
stgan = uint8(inz + msgsft);
figure, imshow(stgan); title('stegano image');
imwrite(stgan,'stgan.bmp');

figure;
subplot(2,2,1); imhist(in1); title('hist  input image');
subplot(2,2,2); imhist(stgan); title('hist  stegano image');
subplot(2,2,3); imhist(histeq(in1)); title('equliz hist  input image');
subplot(2,2,4); imhist(histeq(stgan)); title('equaliz hist stegon image');
end