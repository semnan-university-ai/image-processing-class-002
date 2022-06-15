این کد ها برای تمیز نگه داشتن workspace هستند و معمولا همه جا استفاده میشوند
```
clc;
close all;
clear;
```

در این مرحله عکس ورودی را خوانده و به حالت خاکستری برده و سایز آن در b  و مقدار a را double میکنیم تا از خطا جلوگیری کنیم
```
a=imread('1.jpg');


a = rgb2gray(a);
b=size(a);
a=double(a);
```
![1](https://user-images.githubusercontent.com/94211519/166085185-606e11d9-da71-4d7a-a1a3-e970610a658c.jpg)

![1g](https://user-images.githubusercontent.com/94211519/166085205-8b89707b-be3c-4f8b-a315-ef582cc728ed.jpg)


سپس با استفاده از حلفه ی زیر مقدار هیستوگرام خود را بدست می آوریم

```
hist1 = zeros(1,256);
for i=1:b(1)
    for j=1:b(2)
        for k=0:255
            if a(i,j)==k
                hist1(k+1)=hist1(k+1)+1;
            end
        end
    end
end
```

حال تابع چگالی احتمال خود را با استفاده از هیستوگرام در مقدار کل پیکسل ها بدست می آوریم

```
pdf=(1/(b(1)*b(2)))*hist1;
```

اکنون با استفاده از تابع چگالی احتمال میتوانیم تابع توزیع تجمعی را بسازیم و تصویری به همان اندازه با مقادیر 0 میسازیم
```
cdf = zeros(1,256);
cdf(1)=pdf(1);
for i=2:256
    
    cdf(i)=cdf(i-1)+pdf(i);
end
cdf = round(255*cdf);
ep = zeros(b);
```

در این مرحله با استفاده از حلقه تصویر هیستوگرام خود را میسازیم که t مقدار پیکسل است و ep خروجی که از تابع توزیع تجمعی بدست می آید

```
for i=1:b(1)                                        
    for j=1:b(2)                                  
        t=(a(i,j)+1);                               
        ep(i,j)=cdf(t);                             
    end                                             
end
```

حال هیستوگرام این تصویر را مانند تصویر قبل بدست می آوریم
```
hist2 = zeros(1,256);
for i=1:b(1)
    for j=1:b(2)
        for k=0:255
            if ep(i,j)==k
                hist2(k+1)=hist2(k+1)+1;
            end
        end
    end
end
```
در آخر هیستو گرام و تصاویر را به صورت زیر نمایش میدهیم.

```
subplot(2,2,1);
imshow(uint8(a)),title('original image');
subplot(2,2,3);
imshow(uint8(ep));title('Histogram image');
subplot(2,2,2);
stem(hist1);
subplot(2,2,4);
stem(hist2);
```
خروجی به صورت زیر میباشد حال همین کار را برای عکس های دیگر انجام میدهیم

![1h](https://user-images.githubusercontent.com/94211519/166085072-7b506fb3-9be8-4f4d-a4e5-ff61fa763dfe.jpg)

![2h](https://user-images.githubusercontent.com/94211519/166085084-2dc393bb-ad18-4d53-9cbd-0cb2f302d63a.jpg)

![3h](https://user-images.githubusercontent.com/94211519/166085087-e8e7439f-773d-400a-9877-4c8224a6a62c.jpg)

![4h](https://user-images.githubusercontent.com/94211519/166085091-c0e24fe7-faa4-4cfe-83ed-a4a21ce8725b.jpg)

![5h](https://user-images.githubusercontent.com/94211519/166085094-ceca50dd-931d-4665-84b7-cc5234df9801.jpg)

![6h](https://user-images.githubusercontent.com/94211519/166085100-b10060e5-906c-4dc4-9907-2c7e8e171df1.jpg)

![7h](https://user-images.githubusercontent.com/94211519/166085101-4d9bf265-38b7-48e2-8de8-b5e34e2a8509.jpg)

![8h](https://user-images.githubusercontent.com/94211519/166085102-f599040b-7014-4467-b170-754db4df164b.jpg)

![9h](https://user-images.githubusercontent.com/94211519/166085104-82d175f7-b04d-49cd-a53a-09d3c83872e0.jpg)

![10h](https://user-images.githubusercontent.com/94211519/166085107-a1b8512d-fb0e-4356-b49f-35f427b4d0c5.jpg)

![11h](https://user-images.githubusercontent.com/94211519/166085109-6b2a1e93-e2c4-4243-baeb-f0e6e2dda875.jpg)

![12h](https://user-images.githubusercontent.com/94211519/166085113-fbcff650-87aa-44e6-b0d9-6a392e949d4e.jpg)

