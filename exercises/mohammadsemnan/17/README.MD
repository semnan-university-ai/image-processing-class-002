این کد ها برای تمیز نگه داشتن workspace هستند و معمولا همه جا استفاده میشوند
```
clc;
close all;
clear;
```

تصویر ورودی به شکل زیر است

![monarch](https://user-images.githubusercontent.com/94211519/163608488-4090e18f-2c65-4a94-a2de-6acad43ba90e.png)

مختصات را از کاربر دریافت میکنیم
```
x = input('x start from:');
x1 = input('x end in:');

y = input('y start from:');
y1 = input('y end in:');
```
یک ماتریس با مقدار 0 به اندازه ابعاد تصویر که میخواهیم برش دهیم میسازیم

```
c=zeros((x1-x),(y1-y));
```

عکس را خوانده و با استفاده از از ابعاد آن مشخص میکنیم که مختصات ما خارج از محدوده نباشد

```
d=imread('monarch.png');
m=size(d,1);
n=size(d,2);
if (x<0 || x1<0 || y<0 || y1<0) || (x>m || x1>m || y>n || y1>n)
    disp('Error number is not in range');
else
    disp('numbers are in range');
end
```

با استفاده از یک حلقه هر پیکسل ماتریس خود را برابر میکنیم با پیکسل هایی که در تصویر اصلی انتخاب کردیم چون از 1 شروع میکنیم تصویر اصلی با مختصات ما جمع میشود و اگرنه در غیر این صورت آن هم از 1 مقدار دهی میشود که تصویر برش نمیخور.

سه خروجی با مختصات داده شده به صورت زیر هستند





```
x=100;
x1=500;
y=300;
y1=700;

```
![crop](https://user-images.githubusercontent.com/94211519/169622273-edd60aca-67a2-44cb-833a-75fd9e196df3.jpg)

```
x=10;
x1=30;
y=100;
y1=200;
```

![crop 2](https://user-images.githubusercontent.com/94211519/169622267-a319ba7b-fbae-41cf-822f-7e49dd08a6e6.jpg)

```
x=430;
x1=510;
y=360;
y1=700;
```
![crop 3](https://user-images.githubusercontent.com/94211519/169622270-9018515d-32e2-4fdb-a2b7-930ff96b95ad.jpg)
