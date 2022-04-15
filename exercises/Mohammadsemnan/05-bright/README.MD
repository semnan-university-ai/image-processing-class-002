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
A=rgb2gray(imread('monarch.png'));
```
![gray in](https://user-images.githubusercontent.com/94211519/163608507-5269505c-1a4e-407f-9faf-85ede3710838.jpg)


ابعاد را ذخیره میکنیم
```
[x,y]=size(A);
```
در این مرحله با استفاده از حلقه به هر پیکسل 50 تا اضافه میکنیم

```
for i=1:x-1
    for j=1:y-1
        A(i,j)=50+A(i,j);
    end
end
imshow(A);
```
خروجی

![bright](https://user-images.githubusercontent.com/94211519/163621960-b90477ee-a505-418a-94f6-c71c98a4e174.jpg)

