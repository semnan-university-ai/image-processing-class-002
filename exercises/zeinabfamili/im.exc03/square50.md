## Square50 exercise 
##### برنامه ای بنویسید که به صورت رندوم یک مربع سفید 50 در 50 پیکسل را در هر اجرا روی تصویر ایجاد کند.
##### ابتدا کدهای مربوط به خواندن تصویر و تشکیل تصویر خاکستری را داریم.
```
clc;
close all;
clear;
image1=imread('peppers.png');
image2=rgb2gray(image1);
```
##### حال نمایش تصویر رنگی و خاکستری را داریم.
```
figure,imshow(image2);
```
![squ](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/benchmark/peppers.png)
![squ](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc03/fig1.3.png)
##### حال یک عدد رندوم برای x یک عدد رندوم برای y می یابیم. این را مرکز مربع در نظر میگیریم حال 25 خانه از سطر به بالا و 25 خانه از سطر به پایین و 25 خانه از ستون به بالا و 25 خانه از ستون به پایین را 255 می کنیم . یک شرط هم قرار دادیم که اگر عدد رندوم در سطر یا ستون کمتر از 25 بود یا بزرگتر عددرندوم منهای 25 ان را همان مقدار قبلی بگیرد. 
```
[m,n]= size(image2);
randx=randi(m);
randy=randi(n);
for i= randx-25 :randx+25
    for j= randy-25 : randy+25
        if randx<50 | randx > m-50 |randy<50 |randy>n-50
            image2(i,j)=image2(i,j);
        else
        image2(i,j)= 255;
        end
    end
end
```
##### در این قسمت نتیجه تصویر خروجی را مشاهده می نمایید.
```
image3=image2;
figure,imshow(image3);
```
![squ](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc03/fig2.3.png)

