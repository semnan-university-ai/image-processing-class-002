**پروژه تشخیص اسکناس**
<br>
ابتدا اسکناسی که می‌خواهیم آن را تشخیص دهیم با دستور imread خوانده و با دستور size ابعاد آن را به دست می آوریم.
```
clear,clc,close all
main_money = imread('money-dataset\2000-a.jpg');
[m,n] = size(main_money);
```
سپس با استفاده از یک حلقه for تمامی تصاویر موجود در دیتاست را میخوانیم، به اینصورت که متناظر با مقادیر مختلف i یک تصویر
فراخوانی می‌شود.
```
for i=1:14
img='C:\Users\User\Documents\MATLAB\money recognition\codes\codes\money-dataset';
fullimg=dir(fullfile(img,'\*.jpg*'));
pet=numel(fullimg(i));
image=fullimg(i).name
raw_image=imread(fullfile(img,image));
```
با استفاده از دستور resize تمامی تصاویر موجود در دیتاست را با تصویری که میخواهیم تشخیص دهیم هم‌سایز می‌کنیم.
```
resize_iamge = imresize(raw_image,[m,n/3]);
```
با استفاده از تابع prepare، هریک از کانال‌های R,G و B را برای تمامی تصاویر دیتاست و تصویر مورد نظر محاسبه می‌کنیم. سپس میانگین
هر کانال را از هر درایه آن کم کرده سپس آن را نرمالیزه می‌کنیم.
```
[main_money_R,main_money_G,main_money_B]=Prepare(main_money);
[pat_R,pat_G,pat_B]=Prepare(resize_iamge);

```
به منظور تشخیص میان اسکناس مرجع با سایر اسکناس‌ها می‌توان از فاصله اقلیدسی استفاده نمود، با استفاده از دو for تو در تو تمامی
پیکسل‌ها از هر کانال اسکناس مرجع و سایر اسکناس‌ها را محاسبه میکنیم.

```
for j=1:m
    for k=1:(n/3)
out = sqrt((main_money_R(j,k)-pat_R(j,k)).^2 +...
        (main_money_G(j,k) - pat_G(j,k)).^2 +...
        (main_money_B(j,k) - pat_B(j,k)).^2);
   val_all(i) = mean(mean(out));
    end
end
end
```
با محاسبه فاصله اقلیدسی میان اسکناس مرجع و سایر اسکناس‌ها وسپس در نظر گرفتن کمینه فاصله اقلیدسی می‌توان دریافت، اسکناسی که کمترین
فاصله اقلیدسی را دارا باشد، به عنوان اسکناس مورد نظر انتخاب می‌شود و توسط دستورات شرطی زیر انجام می‌گیرد.
```
value=min(val_all);

if value==val_all(1)
     fprintf('The main_money was recognized 1000 Tomans\n');
elseif value==val_all(2)
     fprintf('The main_money was recognized 1000 Tomans\n');
elseif value==val_all(5)
     fprintf('The main_money was recognized 1000_new Tomans\n');
elseif value==val_all(6)
     fprintf('The main_money was recognized 1000_new Tomans\n');
elseif value==val_all(7)
     fprintf('The main_money was recognized 2000 Tomans\n');
elseif value==val_all(8)
     fprintf('The main_money was recognized 2000 Tomans\n');
elseif value==val_all(9)
     fprintf('The main_money was recognized 5000 Tomans\n');
elseif value==val_all(10)
     fprintf('The main_money was recognized 5000 Tomans\n');
elseif value==val_all(3)
     fprintf('The main_money was recognized 10000 Tomans\n');
elseif value==val_all(4)
     fprintf('The main_money was recognized 10000 Tomans\n');
elseif value==val_all(11)
     fprintf('The main_money was recognized 50000 Tomans\n');
elseif value==val_all(12)
     fprintf('The main_money was recognized 50000 Tomans\n');
elseif value==val_all(13)
     fprintf('The main_money was recognized 50000_new Tomans\n');
elseif value==val_all(14)
     fprintf('The main_money was recognized 50000_new Tomans\n');


end
```
