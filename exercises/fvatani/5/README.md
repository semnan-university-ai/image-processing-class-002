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
for x=1:size(image,1)
        for y=1:size(image,2)
               brightness = floor(image(x,y)*(50/100));
               if image(x,y) + brightness >= 255
                   image(x,y) = 255;
               else               
                 image(x,y) = image(x,y) + brightness;
               end
        end
end
```
تمام پیکسل‌های تصویر به کمک حلقه‌های تو در تو که به اندازه طول و عرض تصویر پیمایش انجام می‌دهند، بررسی می‌شوند. برای بدست آوردن 50 درصد هر پیکسل مقدار هر پیکسل در 0.5 ضرب شده است. برای رند کردن حاصل عبارت در تابع floor قرار گرفته است. پیکسل باید روشن شود (به 255 نزدیک شود) مقدار هر پیکسل با میزان روشنایی بدست آمده جمع می‌شود. مقدار حاصل ممکن است از 255 بیشتر شود بنابراین چک می‌شود که اگر حاصل جمع بیشتر از 255 بود مقدار پیکسل 255 شود در غیر این صورت مقدار بدست آمده جایگزین می‌شود.
```
figure,imshow(image)
```
تصویر نهایی نمایش داده می‌شود.
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/5/tamrin5.png)
