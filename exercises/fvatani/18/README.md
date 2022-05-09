
```
clc;
clear all;
close all;
```
از دستورات clear all، clc و close all  به ترتیب برای پاک کردن صفحهCommand Window، حذف متغیرها و بستن پنجره ها استفاده شده است.
```
image=imread('benchmark/Lenna.png');
hiddenImage=imread('benchmark/text.jpg');
image=rgb2gray(image); 
hiddenImage=rgb2gray(hiddenImage); 
bitplane8 = zeros(size(image));
new_image = uint8(zeros(size(image)));

[row,col,chan] = size(image);
[hrow,hcol,hchan] = size(hiddenImage);
```
تصویر اصلی و تصویر دوم که باید مخفی شود از پوشه benchmark خوانده می‌شود( این پوشه در کنار فایل قرار دارد). هر دو تصویر به کمک تابع rgb۲gray به خاکستری تبدیل می‌شوند. متغیر bitplane۸ برای ذخیره هشتمین bitplane و new_image برای ذخیره تصویری که تغیر کیفیت داده شده استفاده می‌شوند. سایز این دو ماتریس با تصویر اصلی برابر است. سایز تصاویر با تابع size بدست آمده و ذخیره می‌شود.
```
for i = 1 : row
    for j = 1 : col
        binary = de2bi(image(i,j),8);
        bitplane8(i,j) = binary(8);
    end
end
figure(1), imshow(double(bitplane8));
```
