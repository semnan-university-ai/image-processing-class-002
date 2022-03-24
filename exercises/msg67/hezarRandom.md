# تمرین: صفحه 1000x10000 با پیکسل‌های رندم
این قسمت، برای پاک کردن حافظه و متغییرهایی است که شاید در اجرا های قبلی مورد استفاده قرارگرفته اند، و تقریبا در همه کدهای ما استفاده می‌شود.

```
clear;
close all;
clc;
```
ایجاد سایز طول و عرض برابر:
```
sizeHeight=1000;
sizeWidth=sizeHeight;
imgGray2=zeros(sizeWidth,sizeHeight);
```
تولید پیکسل های رندم با تابع rand و جایگذاری در پیکسل های تصویر، و در نهایت نمایش نتیجه:
```

for i=1 : sizeWidth
    for j=1 : sizeHeight
        imgGray2(i,j)=  randi(255);
    end
end    

figure, imshow(uint8(imgGray2));
```

![random_Picture](https://github.com/semnan-university-ai/image-processing-class-002/raw/main/exercises/msg67/asset/hezar.png)
