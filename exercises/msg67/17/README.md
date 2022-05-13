## تمرین 17، برش تصویر


این قسمت، برای پاک کردن حافظه و متغیرهایی است که شاید در اجرا های قبلی مورد استفاده قرارگرفته‌اند، و تقریبا در همه کدهای ما استفاده می‌شود.

```
clear;
close all;
clc;
```
با این قسمت از کد، عکس را از فولدر بنچمارک خوانده، آن را GrayScale کرده و در متغیر img نگهداری می‌کنیم. در خطوط بعد طول و عرض آن را در متغیرهای اسکالر می‌ریزیم. 
```
img= imread("benchmark/cat.png");
img=rgb2gray(img)
size=size(img);
sizeWidth = size(1,1);
sizeHeight = size(1,2);
```
### به وسیله ```figure,imshow(uint8(img)),hold on ; ``` تصویر اصلی را نمایش می‌دهیم:

```
![image Result](https://github.com/semnan-university-ai/image-processing-class-002/raw/main/exercises/msg67/asset/rgb2grayscale.jpg)
```
در اینجا یک ماتریس 0 به سایز طول و عرض تصویر ورودی می‌سازیم تا نتیجه کار را در آن ذخیره کنیم: 
```
result=zeros(sizeWidth,sizeHeight);

```






در پایان هم با دستور زیر تصویر نتیجه را نشان می‌دهیم:
```
figure, imshow(uint8(resultImg));
```

## نتیجه:
![image Result](https://github.com/semnan-university-ai/image-processing-class-002/raw/main/exercises/msg67/asset/rgb2grayscale.jpg)
