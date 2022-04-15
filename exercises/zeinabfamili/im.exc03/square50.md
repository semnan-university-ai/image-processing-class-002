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
##### حال نمایش تصویر خاکستری را داریم.
![squ](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/benchmark/peppers.png)
