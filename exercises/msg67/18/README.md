## تمرین 18 : Bit Plane و نهان‌نگاری

این قسمت، برای پاک کردن حافظه و متغیرهایی است که شاید در اجرا های قبلی مورد استفاده قرارگرفته‌اند، و تقریبا در همه کدهای ما استفاده می‌شود.

```
clear;
close all;
clc;
```
با این قسمت از کد، عکس را از فولدر بنچمارک خوانده و و در متغیر img نگهداری می‌کنیم. در خطوط بعد طول و عرض آن را برای عمومی تر کردن برنامه در متغیرهای اسکالر می‌ریزیم. 
```
img= imread("benchmark/cat.png");

size=size(img);
sizeWidth = size(1,1);
sizeHeight = size(1,2);
```


```
img= imread("asset/Lenna.png");
figure,imshow(uint8(img)),hold on

img=rgb2gray(img);
figure,imshow(uint8(img)),hold on

textIn=imread("asset/text.jpg");
figure, imshow(textIn)




size=size(img);
sizeWidth = size(1,1);
sizeHeight = size(1,2);
```
