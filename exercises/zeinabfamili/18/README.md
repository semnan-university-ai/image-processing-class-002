## یک تصویر به عنوان ورودی اصلی در نظر گرفته شود. در تصویر ورودی، 8 Bit plane استخراج گردد و خروجی آن نمایش داده شود.
##### ابتدا کد های مربوط به  پاک کردن صفحه  comment, ... را داریم . سپس تصویر ورودی را میخوانیم.
```
clc;
close all;
clear;
image = imread('lena.png');
```
##### حال تصویر را gray کرده و سایز تصویر را یافته و ماتریس bp8 را هم سایز با تصویر ورودی با مقادیر صفر تعریف می کنیم.
```
gimage = rgb2gray(image);
[m,n] = size(gimage);
bp8=zeros(m,n);
```
###### با استفاده از دستور de2bi تمام مقادیر پیکسل ها را به یک عدد باینری 8 بیتی تبدیل می کنیم و در a قرار می دهیم .  
```
a = de2bi(gimage,8,'right-msb');
```
###### برای نمایش بیت هشتم با دستور زیر تمام بیت های هشتم ماتریس  a را در b قرار میدهیم و برای نمایش در تصویر در 255 ضرب می شود. 
```
b=a(:,8)*255;
```
##### سپس برای نمایش ان را reshape می کنیم زیرا سایز ماتریس  b ، درواقع m*n  است. 
```
bp8=reshape(b,m,n);
```
##### برای نمایش هم از دستور زیر استفاده شده است.
```
figure;
subplot(1,2,1),imshow(uint8(image)); title('orginal image');
subplot(1,2,2),imshow(uint8(bp8));title('bite plan8 image');
```
![bp8](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/18/bitplane8.jpg)
