این کد ها برای تمیز نگه داشتن workspace هستند و معمولا همه جا استفاده میشوند
```
clc;
close all;
clear;
```

تصویر ورودی به شکل زیر است

![monarch](https://user-images.githubusercontent.com/94211519/163608488-4090e18f-2c65-4a94-a2de-6acad43ba90e.png)


تصویر را از 3 کاناله به سیاه و سفید میبریم و 
```
A=rgb2gray(imread('monarch.png')); imshow(A); title("Circle image")
```

![gray in](https://user-images.githubusercontent.com/94211519/163608507-5269505c-1a4e-407f-9faf-85ede3710838.jpg)



دایره را با استفاده از drawcircle و مشخص کردن ابعاد با ذخیره سازی ابعاد عکس و سپس دایره را بر روی عکس خود رسم میکنیم
```
[m,n]=size(A);
drawcircle('Center',[n,m]/2+0.5,'Radius',length(A)/4)
```


خروجی نهایی

![circled](https://user-images.githubusercontent.com/94211519/163608531-703a7877-13fc-47f5-a013-4a8cbf5d8b79.jpg)

