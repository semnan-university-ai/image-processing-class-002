## تمرین 6: استفاده از فیلتر همسایگی به صورت جذر همسایه های چهارگانه  

این قسمت، برای پاک کردن حافظه و متغیرهایی است که شاید در اجرا های قبلی مورد استفاده قرارگرفته اند، و تقریبا در همه کدهای ما استفاده می‌شود.

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
ساخت یک تصویر، هم‌سایز تصویر اصلی، با متغیرهای دابل و با مقادیر خانه های 0 برای کپی کردن مقادیر حساب شده:
```
imgGray2=zeros(sizeWidth,sizeHeight);
imgGray2= double(imgGray2);
```
محاسبه مقادیر خواسته شده با دو حلقه ```for``` تو در تو:
```
for i=2 : sizeWidth-1
    for j=2 : sizeHeight-1
        imgGray2(i,j)= sqrt(double(imgGray(i,j-1)))+ sqrt(double(imgGray(i,j+1)))...
            +sqrt(double(imgGray(i-1,j)))+sqrt(double(imgGray(i+1,j))); 
    end
end  
```
و در نهایت نمایش تصویر نهایی با دستور: ``` figure, imshow(uint8(imgGray2)); ```

![result](https://github.com/semnan-university-ai/image-processing-class-002/raw/main/exercises/msg67/asset/filterHamsayegi.png)
