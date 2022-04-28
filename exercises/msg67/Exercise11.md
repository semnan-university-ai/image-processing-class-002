## تمرین 11، بهینه کردن هیستوگرام عکس های سفره هفت سین

این قسمت، برای پاک کردن حافظه و متغیرهایی است که شاید در اجرا های قبلی مورد استفاده قرارگرفته‌اند، و تقریبا در همه کدهای ما استفاده می‌شود.

```
clear;
close all;
clc;
```
در این کد، به وسیله یک لوپ به میزان تعداد عکس‌های داخل فولدر، همه عکس‌ها را خوانده، gray scale کرده، هیستوگرام بهینه را حساب کرده، آن را همراه با تصویر اصلی، برای نمایش در تابع ``` montage ``` در یک آرایه ریخته، سپس به وسیله دستور ``` montage ``` آرایه را نمایش می‌دهیم: 
```

for i=1 : 17
    imgi= imread(".\asset\eyd\haftsin\sofre ("+i+").jpeg");
    imgiGray= rgb2gray(imgi);
    imgiH=histeq(imgiGray);
    arr =[imgiGray ,imgiH ];
    montage(arr);
end
```
تصاویر نتیجه به صورت فایل GIF :



![image padding](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/Haftsin/2022-04-28-16-40-34.gif?raw=true)
