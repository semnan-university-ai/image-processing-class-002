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

حال به پیکسل ها را در حاقه گزاشته و تنها نصف آن ها را پیمایش میکنیم و میدانیم که هر پیکسلی را اگر از 255 کسر کنیم نگاتیو به ما میدهد 

```
for i=1:x/2
    for j=1:y-1
        A(i,j)=255-A(i,j);
    end
end
imshow(A);
```

خروحی

![negative](https://user-images.githubusercontent.com/94211519/163622459-aade061d-d6f8-423c-95b6-0312a795e827.jpg)

