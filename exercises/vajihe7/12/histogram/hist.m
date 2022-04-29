a = imread('s.png');
a=rgb2gray(a);
b = imread('z.png');
b=rgb2gray(b);
c = imread('a.png');
c=rgb2gray(c);
d = imread('sh.png');
d=rgb2gray(d);


figure;
subplot(4,2,1);imshow(a)
subplot(4,2,2);imhist(a)
subplot(4,2,3);imshow(b)
subplot(4,2,4);imhist(b)
subplot(4,2,5);imshow(c)
subplot(4,2,6);imhist(c)
subplot(4,2,7);imshow(d)
subplot(4,2,8);imhist(d)
