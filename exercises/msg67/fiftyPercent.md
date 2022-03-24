## تمرین روشن کردن پیکسل‌ها به میزان 50 درصد
این قسمت، برای پاک کردن حافظه و متغییرهایی است که شاید در اجرا های قبلی مورد استفاده قرارگرفته اند، و تقریبا در همه کدهای ما استفاده می‌شود.

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


در کد زیر یک ماتریس 0 به اندازه تصویر می‌سازیم، تا مقادیر روشن شده را در آن بریزیم:
```
imgGray2=zeros(sizeWidth,sizeHeight);
```

```

for i=1 : sizeWidth
    for j=1 : sizeHeight
        imgGray2(i,j)= imgGray(i,j)*(50/100)+ imgGray(i,j); 
    end
end    
```
در آخر هم نتیجه را نمایش می‌دهیم:
```
figure, imshow(uint8(imgGray2));
```
# نتیجه:
![Brighter image](https://github.com/semnan-university-ai/image-processing-class-002/raw/main/exercises/msg67/asset/brighter.png)
