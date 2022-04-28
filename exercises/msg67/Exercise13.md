## تمرین 13، اعمال فیلتر میانه و میانگین با فیلتر 7 در 7

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
![image Original](https://github.com/semnan-university-ai/image-processing-class-002/raw/main/exercises/msg67/asset/normal.png)

اینجا، سایز تصویر را برای اینکه برنامه بصورت عمومی تر و استاندارد شود، در متغیر size میگذاریم و برای اینکه آن را اسکارلر کنیم، از 2 دستور آخر استفاده کردیم، که از ماتریس size متغیر اول و در دستور بعی متغیر دوم را جدا کردیم.

```
size=size(imgGray);
sizeWidth = size(1,1);
sizeHeight = size(1,2);
```
با توجه به بزرگی فیلتر یعنی 7، با این دستور، یک ماتریس 0، با سایز 6 پیکسل بزرگتر از تصویر اصلی میسازیم، تا پدینگ تصویر اصلی را روی آن کپی کنیم.
```
padd=zeros(sizeWidth+6 ,sizeHeight+6);
```
با این دستور، تصویر اصلی را در وسط ```zeroPadding``` کپی می‌کنیم:
```
for i=1 : sizeWidth
    for j=1 : sizeHeight
        padd(i+3,j+3)= imgGray(i,j); 
    end
end   
```
اینجا، جای اصلی برنامه ما براي فيلتر ميانه می‌باشد، به نحوي كه با ايجاد يك ماتريس 7 در 7 و حركت دادن آن روي تصوير اصلي با 2 جلقه for تودرتو، مقادير متناظر آن را در ماتريس ```padd``` در يك آرايه 49 عنصري ذخيره ميكنيم، سپس آن را مرتب و سپس مقدار وسطی یعنی خانه 25 را جایگزین خانه وسطی تصویر وقتی فیلتر روی آن قرار گرفته است، می‌کنیم:
#### مقادیر به صورت آزمون و خطا بدست آمده‌اند
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
 نتیجه فیلتر میانه:
 
![image Median](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/asset/medianResult.png?raw=true)


براي فيلتر میانگین، مثل فیلتر میانه، با ايجاد يك ماتريس 7 در 7 و حركت دادن آن روي تصوير اصلي با 2 جلقه for تودرتو، مقادير متناظر آن را در ماتريس ```padd``` در يك آرايه 49 عنصري ذخيره ميكنيم، سپس جمع مقادیر متناظر را حساب و تقسیم بر 49 می‌کنیم، سپس آن را جایگزین خانه وسطی تصویر وقتی فیلتر روی آن قرار گرفته است، می‌کنیم:
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
        arrSum=sum(arr);
        copyImg(i-3 , j-3)=arrSum/49;
    end
end 
```
تصویر حاصل از فیلتر میانیگین:


![image Mean](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/asset/meanResult.png?raw=true)

برای تست درستی برنامه، ماتریس padd  و copyImg را با ز کرده، و برای خانه اول محاسبات را دستی حساب کردیم:

![image Mean](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/asset/testResulMean.jpg?raw=true)
