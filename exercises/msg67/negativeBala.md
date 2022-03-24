## تمرین نگاتیو کردن نیمه بالای تصویر

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


در کد زیر مقادیر تصویر به اینت32 بدون علامت تبدیل می‌شود تا زمانی که منهای 255 می‌شود مقادیر منفی مجاز شوند:
```
imgGray2=int32(imgGray);
```
در کد زیر نیز ابتدا سطرها رو از 1 تا نصف اندازه طول تصویر و بعد در حلقه بعد مقادیر روشنایی تصویر منهای 255 شده بعد در یک 1- تقسیم می‌کنیم تا مقادیر + بدست آید: 

```
for i=1 : sizeWidth/2
    for j=1 : sizeHeight
        imgGray2(i,j)= imgGray(i,j)- 255;
        if imgGray2(i,j) < 0
            imgGray2(i,j)=  imgGray2(i,j) * -1;
        end
    end
end    
```
درآخر نیز نتیجه را نمایش می‌دهیم:
```
figure, imshow(uint8(imgGray2));
```
# نتیجه:
![image padding](https://github.com/semnan-university-ai/image-processing-class-002/raw/main/exercises/msg67/asset/negativeBala.png)
