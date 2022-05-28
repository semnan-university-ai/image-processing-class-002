## convert rgb to gray
## با فرمول حالت سوم تصویر رنگی را به تصویر خاکستری تبدیل کنید.
##### ابتدا چند کد مربوط به خواندن تصویر و یافتن سایز تصویر را داریم.
```
clc;
close all;
clear;
image = imread('fruits.png');
[m,n,k] = size(image);
```
##### حال یک ماتریس جدید بنام gimage با سایز تصویر اصلی و مقادیر صفر می سازیم.
```
gimage = zeros(m,n);
```
###### حال با کدهای زیر تصویر را به خاکستری تبدیل می کنیم. (با استفاده از فرمول حالت 3 ) 
```
for i = 1:m
    for j = 1:n
    gimage(i,j) = image(i,j,1)*0.299+ image(i,j,2)*0.577+ image(i,j,3)*0.144 ;
    end
end
```
##### در نهایت نشان دادن تصویر اصلی و تصویر خاکستری با کدهای زیر
```
figure;
subplot(1,2,1),imshow(uint8 (image));title ('orginal image');
subplot(1,2,2),imshow(uint8 (gimage));title('gray image');

```
