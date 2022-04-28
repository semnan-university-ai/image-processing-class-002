# تمرین ایجاد پدینگ به میزان 1 پیکسل برابر با پیکسل همسایه

این قسمت، برای پاک کردن حافظه و متغیرهایی است که شاید در اجرا های قبلی مورد استفاده قرارگرفته‌اند، و تقریبا در همه کدهای ما استفاده می‌شود.

```
clear;
close all;
clc;
```

اين قسمت، تصوير را خوانده و آن را GrayScale كرده و با تابع figure نمایش می‌دهد:

```
img1= imread("normal.png");
imgGray= rgb2gray(img1);
figure, imshow(imgGray);
```
## تصویر اصلی :
![image padding](https://github.com/semnan-university-ai/image-processing-class-002/raw/main/exercises/msg67/asset/normal.png)

اینجا، سایز تصویر را برای اینکه برنامه بصورت عمومی تر و استاندارد شود، در متغیر size میگذاریم و برای اینکه آن را اسکارلر کنیم، از 2 دستور آخر استفاده کردیم، که از ماتریس size متغیر اول و در دستور بعی متغیر دوم را جدا کردیم.

```
size=size(imgGray);
sizeWidth = size(1,1);
sizeHeight = size(1,2);
```
با این دستور، یک ماتریس 0، با سایز 2 پیکسل بزرگتر از تصویر اصلی میسازیم، تا پدینگ تصویر اصلی را روی آن کپی کنیم.
```
padd=zeros(sizeWidth+2 ,sizeHeight+2);
```

با دستورات زیر، به ترتیب، پد بالا، پایین، چپ و راست را ایجاد میکنیم:
```

%pad-e bala
for i=1
    for j=1 : sizeHeight
        padd(i,j+2)= imgGray(i,j); 
    end
end    

%pad-e payeen
for i=sizeWidth
    for j=1 : sizeHeight
        padd(i+2,j+1)= imgGray(i,j); 
    end
end    

%pad-e chap
for i=1 : sizeWidth
    for j=1
        padd(i,j)= imgGray(i,j); 
    end
end 

%pad-e rast
for i=1 : sizeWidth
    for j=sizeHeight
        padd(i+1,j+2)= imgGray(i,j); 
    end
end 
```
و درنهایت آن را نشان میدهیم:
```
figure, imshow(uint8(padd));
```
## تصویر اصلی پدینگ :

![image padding](https://github.com/semnan-university-ai/image-processing-class-002/raw/main/exercises/msg67/asset/finalPadding.png)

## تصویر زوم شده قسمت چپ بالای پدینگ :

![image padding](https://github.com/semnan-university-ai/image-processing-class-002/raw/main/exercises/msg67/asset/zoomLeftTopQuarterFinalPadding.png)


