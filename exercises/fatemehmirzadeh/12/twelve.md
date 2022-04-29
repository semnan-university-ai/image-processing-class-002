**سوال 12**<br>


```
clc;close all;clear;
for n=1:12
    i=imread(strcat('D:\7\',int2str(n),'.jpg'));
    i=rgb2gray(i);
    subplot(6,6,n*3-2),imshow(i),title(n);
    subplot(6,6,n*3-1),imhist(i);
    subplot(6,6,n*3),imhist(histeq(i));
end
```
بررسی کد
<br>
از حلقه for برای تعداد تکرار تصاویر استفاده کردبم باتوجه به اینکه تصاویذ 12 تا می باشد بنابراین از 1:n خواهد بود :

```
for n=1:12
```
سپس تصاویر را از فولدر مورد نظر خوانده و به خاکیتری تبدیل می نماییم :
```
 i=imread(strcat('D:\7\',int2str(n),'.jpg'));
 i=rgb2gray(i);
```
در هر حلقه یک تصویر خوانده می شود و در ماتریس i قرار  می گیرد. 
سپس هر در تصویر subplot جهت نمایش قرار می گیرد .
سپس عملیات بهیته سازی هیستوگرام را با استفاده از توابع زیر انجام می دهیم
```
subplot(6,6,n*3-2),imshow(i),title(n);
subplot(6,6,n*3-1),imhist(i);
subplot(6,6,n*3),imhist(histeq(i));
```

خروجی :
<br>
![output](https://user-images.githubusercontent.com/94124607/165733834-cef5a51b-28a7-4ed8-8ee7-7528b5826ede.png)
