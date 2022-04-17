## Circel on the image
#### یک تصویر را از تصاویر benchmark بخوانید و سعی کنید در مرکز تصویر یک دایره ایجاد کنید.
##### در ابتدا تصویر را خوانده و سپس به خاکستری تبدیل نموده و سایز آن را میابیم.
```
clc;
close all;
clear;
image1=imread('fruits.png');
image2=rgb2gray(image1);
imshow(image2);
[m,n]=size(image2);
```
##### تصویر خاکستری به شکل زیر می باشد.
![crl](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/benchmark/airplane.png)
##### برای رسم دایره بایستی مرکز و شعاع آنرا مشخص کنیم. شعاع آن را 50 و مرکز ان را مرکز تصویر در نظر گرفتیم. حال زاویه الفا را از 0 تا 360 تعریف میکنیم.
##### بعد از اان rcos(alfa) را با مختصات x مرکز دایره و rsin(alfa) را با مختصات y مرکز دایره جمع می کنیم. دایره با گام های 0.01 متغییراست.
###### در نهایت با دستور plot دایره ای قرمز با عرض خط 2 رسم می کنیم.
```
r=100;
xc = m/2;
yc = n/2;
hold on
alfa = 0:0.01:2*pi;
x = xc + cos(alfa)' *r;
y = yc + sin(alfa)' *r;
plot(x,y,'r','LineWidth',2)
```
##### رسم دایره روی تصویر در شکل زیر نمایش داده شده است. دقت شود در اینحا از دستور figure استفاده نشده است.
![crl](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/benchmark/airplane.png)
