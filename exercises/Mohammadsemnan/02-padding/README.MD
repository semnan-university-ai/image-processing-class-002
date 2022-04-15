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


با استفاده از padarray پدینگ انجام میدهیم
```
padd = padarray(A,[1 1],'replicate','both');

imshow(padd);
```
repilcate پد با تکرار عناصر مرزی آرایه را انجام میدهد

برای both نیز یعنی هم از چپ و راست و هم از بالا پایین پدینگ انجام میشود

خروجی نهایی
![pad 1-1 both](https://user-images.githubusercontent.com/94211519/163623018-3899b300-fba9-4e89-8c8a-e7dc66c3ffe4.jpg)


چند مثال

pad 0 20 both


![pad 0 20 both](https://user-images.githubusercontent.com/94211519/163623016-5758ee9d-098b-456e-b9d6-ca62a5315bf8.jpg)

pad 20-20 post

![pad 20-20 post](https://user-images.githubusercontent.com/94211519/163623020-7f7a4caa-ef94-42d2-a369-49cdb5169005.jpg)

pad 20-20-both

![pad 20-20-both](https://user-images.githubusercontent.com/94211519/163623022-f768a68f-9aa2-45a2-a413-7b392c173f56.jpg)
