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


در این مرحله میتوان ابعادی به اندازه عکس ورودی ساخته و مقادیر آن را برابر صفر قرار داد اما این کار الزامی نیست
```
B=zeros(x,y);
```
حال با جمع حاصل جذز عکس را تغییر میدهیم و از آن جایی که تفاضل هر پیکسل بالا و پایین و چپ و راست یک است جمع و منهای یک میکنیم
```
for i=2:x-1
    for j=2:y-1

        C(i,j)=sqrt(double(A(i-1,j)))+sqrt(double(A(i+1,j)))+sqrt(double(A(i,j-1)))+sqrt(double(A(i,j+1)));
    end
end
imshow(uint8(C));
```
اگر در جذز double نگزاریم خطا میدهد
خروجی نهایی
![n4](https://user-images.githubusercontent.com/94211519/163618523-762f8a03-36d2-4747-b399-1976c1d6b35d.jpg)
