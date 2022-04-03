```
clc;
clear all;
close all;
```
از دستورات clear all، clc و close all  به ترتیب برای پاک کردن صفحهCommand Window، حذف متغیرها و بستن پنجره ها استفاده شده است.
```
image=imread('pears.png'); 
image=rgb2gray(image); 
```
تصویر دریافت شده وازRGB به تصویر خاکستری تبدیل می‌شود. در صورتیکه تصویر خاکستری است این خط کامنت شود.

```
for x=1:(size(image,1)/2)
            for y=1:size(image,2)             
               image(x,y) = 255 - image(x,y); 
            end
end
```
تصویر نگاتیو از کم شدن مقدار اصلی پیکسل از 255 بدست میاد. بنابراین حاصل تفریق به عنوان مقدار جدید در پیکسل ذخیره می‌شود. برای تغییر مقادیر پیکسل نیمه بالایی نیاز هست فقط نیمه تصویر پیمایش شود بنابراین عرض تصویر به اندازه y باقی مانده و طول تصویر نصف می‌شود.size(image,1) که مقدار طول تصویر را برمی‌گرداند  بر دو تقسیم  شده است و  size(image,2) مقدار y را بر می‌گرداند.
```
figure,imshow(image)
```
تصویر نهایی نمایش داده می‌شود.
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/4/tamrin4.png)
