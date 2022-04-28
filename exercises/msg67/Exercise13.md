## تمرین 13، اعمال فیلتر میانه و میانگین

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
copyImg= imgGray;
```


## تصویر اصلی :
![image padding](https://github.com/semnan-university-ai/image-processing-class-002/raw/main/exercises/msg67/asset/normal.png)

اینجا، سایز تصویر را برای اینکه برنامه بصورت عمومی تر و استاندارد شود، در متغیر size میگذاریم و برای اینکه آن را اسکارلر کنیم، از 2 دستور آخر استفاده کردیم، که از ماتریس size متغیر اول و در دستور بعی متغیر دوم را جدا کردیم.

```
size=size(imgGray);
sizeWidth = size(1,1);
sizeHeight = size(1,2);
```
با توجه به بزرگی فیلتر یعنی 7، با این دستور، یک ماتریس 0، با سایز 6 پیکسل بزرگتر از تصویر اصلی میسازیم، تا پدینگ تصویر اصلی را روی آن کپی کنیم.
```padd=zeros(sizeWidth+6 ,sizeHeight+6);
```
با این دستور، تصویر اصلی را در وسط ```zeroPadding``` کپی می‌کنیم:
```
for i=1 : sizeWidth
    for j=1 : sizeHeight
        padd(i+3,j+3)= imgGray(i,j); 
    end
end   
```
اینجا، جای اصلی برنامه ما می‌باشد:
```
for i=1+3 : sizeWidth+3
    for j=1+3 : sizeHeight+3
        arr =[ padd(i-3,j-3), padd(i-3,j-2),padd(i-3,j-1),padd(i-3,j),...
            padd(i-3,j+1),padd(i-3,j+2),padd(i-3,j+3),...
            padd(i-2,j-3),padd(i-2,j-2),padd(i-2,j-1),padd(i-2,j),...
            padd(i-2,j+1),padd(i-2,j+2),padd(i-2,j+3),...
            padd(i-1,j-3),padd(i-1,j-2),padd(i-1,j-1),padd(i-1,j),...
            padd(i-1,j+1),padd(i-1,j+2),padd(i-1,j+3),...
            padd(i,j-3),  padd(i,j-2),  padd(i,j-1),padd(i,j),...
            padd(i,j+1),  padd(i,j+2),  padd(i,j+3),...
            padd(i+1,j-3),padd(i+1,j-2),padd(i+1,j-1),padd(i+1,j),...
            padd(i+1,j+1),padd(i+1,j+2),padd(i+1,j+3),...
            padd(i+2,j-3),padd(i+2,j-2),padd(i+2,j-1),padd(i+2,j),...
            padd(i+2,j+1),padd(i+2,j+2),padd(i+2,j+3),...
            padd(i+3,j-3),padd(i+3,j-2),padd(i+3,j-1),padd(i+3,j),...
            padd(i+3,j+1),padd(i+3,j+2),padd(i+3,j+3)
            ]; 
        arrSort=sort(arr);
        copyImg(i-3 , j-3)=arrSort(25);
    end
end 
```
