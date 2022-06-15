
img=imread('peppers.png');
img= rgb2gray(img);
im=imread('poem.jpeg');
Hide=rgb2gray(im);
Hide= imresize(Hide,[size(img,1),size(img,2)]);

i=2
bit1=mod(floor(Hide/i^7),i);
bit2=mod(floor(img/i),i);
bit3=mod(floor(img/i^2),i);
bit4=mod(floor(img/i^3),i);
bit5=mod(floor(img/i^4),i);
bit6=mod(floor(img/i^5),i);
bit7=mod(floor(img/i^6),i);
bit8=mod(floor(img/i^7),i);
data=(i*(i*(i*(i*(i*(i*(i*bit8)+bit7)+bit6)+bit5)+bit4)+bit3)+bit2)+bit1;

merg_bit1=bit8 .* 128+bit7 .* 64+bit6 .*32 ;
merg_bit2=bit8 .* 128+bit7 .* 64+bit6 .*32 +bit5.*16+bit4.*8;
figure(1);
imshow((bit8.*255))
title('bitplane 8');
figure(2);
subplot (2,3,1)
imshow(img);
title('raw image');
subplot (2,3,2)
imhist(img)
title(' histogram of raw image');
subplot (2,3,3)
imhist(histeq(data))
title('histogram eq of raw image');
subplot (2,3,4)
imshow(uint8(data));
title('steganography');
subplot (2,3,5)
imhist(data)
title(' histogram of steganography');
subplot (2,3,6)
imhist(histeq(data))
title(' histogram eq of steganography');
figure;
subplot (1,2,1)
imshow(uint8(merg_bit1));
title('bit plan 6,7,8');
subplot (2,2,2)
imshow(merg_bit2);
title('bit plane 4,5,6,7,8');
