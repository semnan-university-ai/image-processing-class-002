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

راه های زیادی برا ایجاد یک مربع سقید وجود دارد حال ما با استفاده از ابعاد تصویر و تولید 2 عدد تصادفی که یکی طول و دیگری عرض ماست یک مربع میسازیم و در نقاط مختلف عکس آن را نمایش میدهیم.1,1 در randi به معنای ابعاد هست که ما 1 میگذاریم تا تنها یک عدد داشته باشیم و با دادن مقدار 255 مربع سفید ساخته میشود.2 هم میتوان انجام داد

```

x1 = randi([50 x],1,1);
x2=randi([50 y],1,1);

%2
%x1 = randi([50 x-50],1,1);
%x2=randi([50 y-50],1,1);
for i=x1:(x1+50)-1
        for j=x2:(x2+50)-1
            A(i,j)=255;
        end
end

imshow(A)
```

خروجی به شکل زیر است

![ws 2](https://user-images.githubusercontent.com/94211519/163649214-3d5f984b-2d81-487f-968f-39e55fe18e5b.jpg)


![ws 3](https://user-images.githubusercontent.com/94211519/163649218-7ea04a61-e1e4-4d8c-828b-69020896e3db.jpg)


![ws](https://user-images.githubusercontent.com/94211519/163649219-fac6d61d-7b9b-42a1-9e08-745c01cb947b.jpg)


