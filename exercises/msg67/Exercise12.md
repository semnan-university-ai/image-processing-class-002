## تمرین 12، بهینه کردن هیستوگرام عکس های سفره هفت سین

### تصاویر نتیجه به صورت فایل GIF :

![videoOfResult](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/Haftsin/2022-04-28-16-40-34.gif?raw=true)

### توضیحات کد:
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
تصاویر نتیجه:

##              تصویر راست: تصویر بهینه شده               <<----------------------------->>                               تصویر چپ: تصویر اصلی 
![image 1](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/Haftsin/sofre%20(1).jpg?raw=true)
![image 2](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/Haftsin/sofre%20(2).jpg?raw=true)
![image 3](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/Haftsin/sofre%20(3).jpg?raw=true)
![image 4](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/Haftsin/sofre%20(4).jpg?raw=true)
![image 5](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/Haftsin/sofre%20(5).jpg?raw=true)
![image 6](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/Haftsin/sofre%20(6).jpg?raw=true)
![image 7](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/Haftsin/sofre%20(7).jpg?raw=true)
![image 8](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/Haftsin/sofre%20(8).jpg?raw=true)
![image 9](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/Haftsin/sofre%20(9).jpg?raw=true)
![image 10](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/Haftsin/sofre%20(10).jpg?raw=true)
![image 11](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/Haftsin/sofre%20(11).jpg?raw=true)
![image 12](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/Haftsin/sofre%20(12).jpg?raw=true)
![image 13](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/Haftsin/sofre%20(13).jpg?raw=true)
![image 14](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/Haftsin/sofre%20(14).jpg?raw=true)
![image 15](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/Haftsin/sofre%20(15).jpg?raw=true)
![image 16](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/Haftsin/sofre%20(16).jpg?raw=true)
![image 17](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/Haftsin/sofre%20(17).jpg?raw=true)

