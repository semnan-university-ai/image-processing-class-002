```
clc;
clear all;
close all;
```
از دستورات clear all، clc و close all  به ترتیب برای پاک کردن صفحهCommand Window، حذف متغیرها و بستن پنجره ها استفاده شده است.
```
for i=1:1000
    for j=1:1000
        image(i,j) = randi(255);
    end
end
```
به کمک تابع zeros یک آرایه 1000 در 1000 با مقدار صفر ساخته می‌شود. uint8 مقدار را به یک عدد صحیح 8 بیتی بدون علامت تبدیل می کند. با دو حلقه تو در تو که مقدار x وy تا 1000 پیمایش می‌شود مقدار پیکسل هر موقعیت (x,y) تنظیم می‌شود. تابع  ()randi جهت تولیدعدد تصادفی از یک تا ورودی بکار می‌روند. 
```
figure,imshow(image)
```
تصویر خروجی نمایش داده می‌شود. خروجی:
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/8/tamrin8.png)


