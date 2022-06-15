```
clc;
clear all;
close all;
```
از دستورات clear all، clc و close all  به ترتیب برای پاک کردن صفحهCommand Window، حذف متغیرها و بستن پنجره ها استفاده شده است.
```
image=imread('pears.png');
output=crop_image(150,100,350,600,image);
figure,imshow(image);
figure,imshow(output);
```
تصویر ورودی دریافت شده است. می‌خواهیم تصویر ورودی را از نقطه شروع(۱۰۰، ۱۵۰) تا (۳۵۰، ۶۰۰) برش دهیم. نقاط را به همراه تصویر به عنوان ورودی به تابع می‌دهیم. خروجی تابع تصویر برش داده شده است. تصویر اصلی و برش داده را نمایش می‌دهیم.
```
function crop = crop_image(x1,y1,x2,y2,image)
crop = image(x1:x2,y1:y2,:);
end
```
دستور function برای ساخت تابع استفاده می‌شود. نام تابع و فایل بطور یکسان crop_image قرار می‌دهیم. تصویر و مختصات (x۱، y۱) شروع نقطه برش و مختصات (x۲، y۲) به عنوان ورودی دریافت می‌شود. در نهایت مقدار ذخیره شده در متغیر crop به عنوان خروجی بر می‌گردد. x۱: x۲ تمامی نقاط x بین این دو نقطه و y۱: y۲ تمامی نقاط y بین این دو نقطه را شامل می‌شود. image(x، y) مقدار پیکسل مربوطه را برمیگرداند که در اینجا تمامی پیکسل‌های بین دو نقطه را شامل می‌شود. مقدار پیکسل‌ها در crop ذخیره شده و به عنوان خروجی برمیگردد. مقدار سوم در image بعد سوم ماتریس که رنگ های RGB است را شامل می شود.

خروجی
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/17/tamrin17-1.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/17/tamrin17-2.png)
