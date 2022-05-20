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

هر  رنگ یک کد از 0-255  دارد که  یعنی میتوان ان را به صورت باینری و با 8 بیت نوشت که هر بیت نمایانگر یک مقدار است مثلا :  بیت 8  یعنی 128  بیت 7 یعنی 64 الی اخر 
پس با تقسیم عدد رنگ هر پیکسل بر این ارقام 128 – 64-32و...  و محاسبه خارج قسمت و سپس محاسبه  باقی مانده تقسیم خارج قسمت بدست امده بر 2 که یا 0 یا 1 میتواد باشد  بیت پلین هارا محاسبه میکنیم   میخواهیم به جای بیت اول عکس تصویر را قرار دهیم برای همین b1 را با مقدار بیت پلین 8 تصویر پنهان  محاسبه میکنیم 
در نهایت هر کدام از این بیت پلین هارا در ارزش  فوق الذکر ضرب کرده و با هم جمع میکنیم  

```

figure(1);
imshow((b8.*255))
title('bitplane 8');
figure(2);
subplot (2,3,1)
imshow(img);
title('initail img');
subplot (2,3,2)
imhist(img)
title(' hist initail img');
subplot (2,3,3)
histeq(img)
title('hist equalisation initial img');
subplot (2,3,4)
imshow(uint8(temp));
title('steganography');
subplot (2,3,5)
imhist(temp)
title(' hist steganography');
subplot (2,3,6)
histeq(temp)
title(' histogram equalisation steganography');

 
figure;
subplot (1,2,1)
imshow(uint8(Com1));
title('8-7-6');
subplot (1,2,2)
imshow(img);
title('8-7-6-5-4');

```

تصاویر ورودی:

