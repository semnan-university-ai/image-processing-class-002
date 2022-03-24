# تمرین ایجاد پدینگ به میزان 1 پیکسل برابر با پیکسل همسایه


این قسمت، برای پاک کردن حافظه و متغییرهایی است که شاید در اجرا های قبلی مورد استفاده قرارگرفته اند، و تقریبا در همه کدهای ما استفاده می‌شود.

```
clear;
close all;
clc;
```

اين قسمت، تصوير را خوانده و آن را گري‌اسكيل كرده و با تابع figure نمایش می‌دهد:

```
img1= imread("normal.png");
imgGray= rgb2gray(img1);
figure, imshow(imgGray);
```

## تصویر اصلی :

![image padding](https://github.com/semnan-university-ai/image-processing-class-002/raw/main/exercises/msg67/asset/normal.png)


## تصویر اصلی پدینگ :

![image padding](https://github.com/semnan-university-ai/image-processing-class-002/raw/main/exercises/msg67/asset/finalPadding.png)

## تصویر زوم شده قسمت چپ بالای پدینگ :

![image padding](https://github.com/semnan-university-ai/image-processing-class-002/raw/main/exercises/msg67/asset/zoomLeftTopQuarterFinalPadding.png)


