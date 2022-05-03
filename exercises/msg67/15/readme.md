## تمرین 15، تبدیل عکس RGB به خاکستری با فرمول (0.299R + 0.587G + 0.114B)

این قسمت، برای پاک کردن حافظه و متغیرهایی است که شاید در اجرا های قبلی مورد استفاده قرارگرفته‌اند، و تقریبا در همه کدهای ما استفاده می‌شود.

```
clear;
close all;
clc;
```
با این قسمت از کد، عکس را از فولدر بنچمارک خوانده و و در متغیر img نگهداری می‌کنیم. در خطوط بعد طول و عرض آن را در متغیرهای اسکالر می‌ریزیم. 
```
img= imread("benchmark/cat.png");

size=size(img);
sizeWidth = size(1,1);
sizeHeight = size(1,2);
```

در اینجا یک ماتریس 0 به سایز طول و عرض تصویر ورودی می‌سازیم: 
```
result=zeros(sizeWidth,sizeHeight);

resultImg=uint16(result);
```

به وسیله دو حلقه تو در تو به بزرگی طول و عرض تصوسر ورودی، هر مولفه تصویر را به وسیله فرمول موجود حساب می‌کنیم:

```
for i=1 : sizeWidth
    for j=1 : sizeHeight 
         resultImg(i,j)=(img(i,j,1))*(0.299)+...
             (img(i,j,2))*(0.587)+ (img(i,j,3))*(0.114);       
    end
end
```
در پایان هم با دستور زیر تصویر نتیجه را نشان می‌دهیم:
```
figure, imshow(uint8(resultImg));
```

## نتیجه:
![image Result](https://github.com/semnan-university-ai/image-processing-class-002/raw/main/exercises/msg67/asset/rgb2grayscale.jpg)
