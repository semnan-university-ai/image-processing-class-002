# پروژه تشخیص پول 
## توضیح کد:
این کد در ابتدای همه برنامه ها موجود است و محیط کار در متلب  و متغیر ها و حافظه استفاده شده در برنامه های قبلی را پاک می کند و
همه آپشن های باز را می بندد تا تلاقی در مقدار متغیرها یا فایل ها رخ ندهد.
```
clc;
clear;
close all;
```
به طور کلی در کد پروژه اینجانب از روش فاصله اقلیدسی رنگ تصاویر استفاده میکنیم به طوریکه رنگ تصویر ورودی هر چه بیشتر مشابه داده های معیار داده شده در کد اصلی
باشد به عنوان خروجی مورد نظر انتخاب میشود پروژه شامل 5 فایل کد :یک فایل کد اصلی و 5 فایل توابع می یاشد. همچنین در دیتا ست جمع شده تصاویر پول  a,b,c  به عنوان 
داده ی معیار استفاده میشوند و  داده ی d ,e به عنوان داده ی تست استفاده میشود.

```
%%Making trainsets

trainsets_image = imread('10000-d.jpg');
[m,n] = size(trainsets_image);

```در این قسمت کد پولی که قرار است شناخته شود وارد میشود و سایز آن ذخیره میگردد. 
```
money_1000_a  = imread('1000-a.jpg');
money_1000_b  = imread('1000-b.jpg');
money_1000_c  = imread('1000-c.jpg');


money_2000_a  = imread('2000-a.jpg');
money_2000_b  = imread('2000-b.jpg');
money_2000_c  = imread('2000-c.jpg');

money_5000_a  = imread('5000-a.jpg');
money_5000_b  = imread('5000-b.jpg');
money_5000_c  = imread('5000-c.jpg');

money_10000_a  = imread('10000-a.jpg');
money_10000_b  = imread('10000-b.jpg');
money_10000_c  = imread('10000-c.jpg');
```
در این قسمت کد پولهای معیار خوانده و ذخیره میشود .
```
%resize
money_1000_a  = imresize(money_1000_a ,[m,n/3]);
money_1000_b  = imresize(money_1000_b ,[m,n/3]);
money_1000_c  = imresize(money_1000_c ,[m,n/3]);

money_2000_a  = imresize(money_2000_a ,[m,n/3]);
money_2000_b  = imresize(money_2000_b ,[m,n/3]);
money_2000_c  = imresize(money_2000_c ,[m,n/3]);

money_5000_a  = imresize(money_5000_a ,[m,n/3]);
money_5000_b  = imresize(money_5000_b ,[m,n/3]);
money_5000_c  = imresize(money_5000_c ,[m,n/3]);

money_10000_a  = imresize(money_10000_a ,[m,n/3]);
money_10000_b  = imresize(money_10000_b ,[m,n/3]);
money_10000_c  = imresize(money_10000_c ,[m,n/3]);


```
در این قسمت داده های ورودی همگی ریسایز میشوندتا کار با آنها راحتتر شود.
