# task18

## bitplane

--------------------------

```
clc
clear all
close all

```

پاک کردن اطلاعات حاصل از اجرای برنامه قبلی در متلب

```
img0=imread('photo_2022-05-20_23-40-51.jpg');
img= rgb2gray(img0);
img1=imread('text.jpg');
Hidimg=rgb2gray(img1);
x1= size(img,1);
y1= size(img,2);
z1= size(img,3);
x2= size(Hidimg,1);
y2= size(Hidimg,2);
z2= size(Hidimg,3);

```

خواندن تصویر اولیه و تصویر مخفی شده و تبدیل انها به سطح خاکستری و محاسبه سایز هر شکل

```
Hidimg= imresize(Hidimg,[x1,y1]);
```
سوال اول:  همسایز کردن 
اگر سایز دو تصویر یکی نباشد چند  حالت داریم
1-	تصویر مخفی بزرگتر از تصویر اصلی بوده  و با تغییر سایز یا imresize  ابعاد ان را تغییر دهیم
2-	 تصویر مخفی کوچیکتر بوده  و با تغییر سایز و یا کاشی کردن تصویر  ابعاد ان را با عکس اصلی یکی کنیم
در اینجا ما در صورت یکی نبودن ابعاد در هر دوحالت تغییر سایز میدهیم

```

b8=mod(floor(img/128), 2);
b7=mod(floor(img/64), 2);
b6=mod(floor(img/32), 2);
b5=mod(floor(img/16), 2);
b4=mod(floor(img/8), 2);
b3=mod(floor(img/4), 2);
b2=mod(floor(img/2), 2);
b1=mod(floor(Hidimg/128), 2);
temp=(2*(2*(2*(2*(2*(2*(2*b8)+b7)+b6)+b5)+b4)+b3)+b2)+b1; 
Com1=b8 .* 128+b7 .* 64+b6 .*32 ;
Com2=b8 .* 128+b7 .* 64+b6 .*32 +b5.*16+b4.*8;
```
