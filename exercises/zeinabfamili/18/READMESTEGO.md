
## یک تصویر شامل یک بیت شعر را به عنوان ورودی دوم لحاظ کنید. تصویر ورودی دوم را در تصویر اصلی مخفی کنید و روش مخفی کردن خود را توضیح دهید.
#####  ابتدا تصویر اصلی و تصویری که قرار است در تصویر ورودی گنجانده شود که ما انرا imcover نام نهادیم میخوانیم.
```
clc;
close all;
clear;
image = imread('lena.png');
imcover = imread('text.jpg');
```
###### در اینجا تصویر cover  را خاکستری مینماییم و سایز تصویر ورودی و تصویر cover خاکستری را بدست می آوریم.
```
gimcover = rgb2gray (imcover)>128;
[m,n,s] = size(image);
[u,v] = size(gimcover);
```
##### حال یک ماتریس تصویر بنام wimage برابر با ماتریس ورودی تعریف می کنیم که نتیجه نهایی در آن قرار می گیرد.
```
wimage = image;
```
##### با دستور reshape ماتریس خاکستری cover  را به ماتریس ای بنام cover تبدیل مینمایم که شامل 1 سطر و u*v است. 
```
cover = reshape(gimcover,1,u*v);
```
##### در این قسمت من بیت های تصویر cover را در بیت های کم ارزش ماتریس دوم تصویر یعنی در بیت های کم ارزش قسمت green  هر پیکسل جاسازی کردم.
##### برای این کار ابتدا قسمت green هر پیکسل تصویر را با دستور de2bi  باینری کرده سپس مقدار ماتریس cover  را در بیت کم ارزش آن یغنی d(1) نمودم.دوباره d را دسیمال کرده و در نهایت این مقدار را در  قسمت green تصویر wimage قرار دادم. برای قسمت red و blue همان مقادیر تصویر اصلی جایگزین می شود. این عمل تا جاسازی کامل تصویر cover در تصویر اصلی ادامه می یابد.     

```
k=1;
for i = 1:m
    for j =1:n
        if k < u*v
            d=de2bi(image(i,j,2),8);
            d(1)=cover(k);
            dd= bi2de(d);
         
            wimage(i,j,1) =image(i,j,1);
            wimage(i,j,2) = dd;
            wimage(i,j,3) = image(i,j,3);
        k=k+1; 
        end
    end
end
```
##### در نهایت تصویر ورودی و تصویر cover شده را نمایش میدهیم.
```
figure;
subplot(1,2,1),imshow(uint8(image)); title('orginal image');
subplot(1,2,2),imshow(uint8(waterimage));title('result image');
```
![stego](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/18/fig%20setgo%2018.jpg)
