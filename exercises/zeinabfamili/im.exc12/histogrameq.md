## Histogram Equalization
##### روی تصاویر سفره هفت سین خود عملیات بهینه سازی هیستوگرام را انجام دهید و خروجی هر یک را در کنار ورودی اصلی آن قرار دهید. (ابتدا تصویر خاکستری شود.)
###### ابتدا تصویر مورد نظر را میخوانیم سپس آنرا خاکستری نمودیم.
```
clc;
close all;
clear;
image1= imread('1.jpg');
image2=rgb2gray(image1);
```
##### حال با استفاده از دستور زیر هموار سازی هیستوکرام را انجام می دهیم در واقع این دستور ابتدا هیستوگرام تصویر یا همان توزیع احتمال تمام پیکسل های تصویر را می یابد. سپس توزیع احتمال تجمعی را بدست می اورد.

```
image3=histeq(image2);
```
##### برای دیدن دو تصویر کنار هم از دستور figure و subplot استفاده میکنیم. درواقع صفحه figure را به دوقسمت تقسیم کردیم. 1 سطر و 2 ستون میشود.که در اولی تصویر اصلی و در دومی تصویر اکواالیز شده نشان داده می شود.
```
figure;
subplot(1,2,1);imshow(image2);
subplot(1,2,2);imshow(image3);
```
##### در ادمه 10 تصویر سفره هفت سین با تصویر هموار ساز شده را اورده ام.
![hist](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc12/histpic1.jpg)
![hist](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc12/histpic2.jpg)
![hist](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc12/histpic3.jpg)
![hist](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc12/histpic4.jpg)
![hist](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc12/histpic5.jpg)
![hist](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc12/histpic6.jpg)
![hist](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc12/histpic7.jpg)
![hist](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc12/histpic10.jpg)
![hist](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc12/histpic11.jpg)
![hist](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc12/histpic12.jpg)

