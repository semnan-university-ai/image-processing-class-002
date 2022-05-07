
```
clc;
clear all;
close all;
```
از دستورات clear all، clc و close all  به ترتیب برای پاک کردن صفحهCommand Window، حذف متغیرها و بستن پنجره ها استفاده شده است.
```
folder='D:\Uni\images';
I=dir(fullfile(folder,'*.jpg'));
```
تابع dir فایل‌ها را در پوشه فعلی لیست می‌کند و fullfill یک بردار کاراکتر حاوی مسیر کامل فایل را برمی گرداند. متغیر I ساختاری است شامل نام، پوشه، تاریخ، بایت‌ها و متغیر isdir که اگر پوشه‌ای در مسیرباشد مقدار یک می‌گیرد را نشان می‌دهد. در نهایت می‌توان به تمام فایل‌ها با پسوند jpg در پوشه مسیر دسترسی داشت.
```
for k=1:numel(I)
    filename=fullfile(folder,I(k).name);
    image=imread(filename);
     
    image=rgb2gray(image); 
    p=floor(7/2);
    pad=uint8(zeros(size(image)+2*p));
        
    result_image_mean=uint8(zeros(size(image))); 
    result_image_median=uint8(zeros(size(image)));  
```
حلقه به تعداد فایل‌های موجود پوشه تکرار می‌شود. نام فایل در انتهای متغیر folder که مسیر را نشان می‌دهد قرار می‌گیرد. متغیر با تابع imread خوانده شده و در image ذخیره می‌شود. تصویر rgb ورودی نیز با دستور rgb۲gray خاکستری شده است. برای پنجره ۷*۷ به padding با نصف اندازه پنجره نیاز است. برای رند کردن مقدار تقسیم از تابع floor استفاده شده است. مقدار pad علاوه بر پیکسل‌های اصلی تصویر باید padding را نیز در بر بگیرد. padding در سمت چپ و راست و بالا و پایین باید اضافه گردد بنابراین به پیکسل‌هایی اصلی تصویر دو برابر مقدار p باید اضافه شود. result_image_mean و result_image_median متغیر‌هایی برای ذخیره نتایج هستند و ابعاد آن به اندازه تصویر اصلی است.
```
for x=1:size(image,1)
    for y=1:size(image,2)
        pad(x+p,y+p)=image(x,y); 
    end
end
```
تصویر اصلی به کمک دو حلقه که شمارنده آنها از یک تا طول و عرض تصویر پیش می‌رود پیمایش شده و مقدار پیکسل‌ها در pad ذخیره می‌شود. از آنجا که p ستون و p سطر در ابتدا و انتها و بالا و پایین تصویر برای padding باید خالی بماند و پیکسل ها در وسط قرار گیرند مقدار x و y در pad با p جمع شده‌است.
```
 for x=1:size(result_image_mean,1)
         for y=1:size(result_image_mean,2)
                result = 0;
                sum = 0;

                sum = double(pad(x + (p-3),y + (p-3))) + double(pad(x + (p-3),y + (p-2))) + double(pad(x + (p-3),y + (p-1))) + double(pad(x + (p-3),(y+p)))  + double(pad(x + (p-3),y + (p+1))) + double(pad(x + (p-3),y + (p+2))) + double(pad(x + (p-3),y + (p+3))) ...  
                    + double(pad(x + (p-2),y + (p-3))) + double(pad(x + (p-2),y + (p-2))) + double(pad(x + (p-2),y + (p-1))) + double(pad(x + (p-2),(y+p)))  + double(pad(x + (p-2),y + (p+1))) + double(pad(x + (p-2),y + (p+2))) + double(pad(x + (p-2),y + (p+3))) ...
                    + double(pad(x + (p-1),y + (p-3))) + double(pad(x + (p-1),y + (p-2))) + double(pad(x + (p-1),y + (p-1))) + double(pad(x + (p-1),(y+p)))  + double(pad(x + (p-1),y + (p+1))) + double(pad(x + (p-1),y + (p+2))) + double(pad(x + (p-1),y + (p+3))) ...
                    + double(pad((x+p) ,y + (p-3)))    + double(pad((x+p),y + (p-2)))     + double(pad((x+p),y + (p-1)))     + double(pad((x+p),(y+p)))      + double(pad((x+p),y + (p+1)))     + double(pad((x+p),y + (p+2)))     + double(pad((x+p),y + (p+3))) ... 
                    + double(pad(x + (p+1),y + (p-3))) + double(pad(x + (p+1),y + (p-2))) + double(pad(x + (p+1),y + (p-1))) + double(pad(x + (p+1),(y+p)))  + double(pad(x + (p+1),y + (p+1))) + double(pad(x + (p+1),y + (p+2))) + double(pad(x + (p+1),y + (p+3))) ...
                    + double(pad(x + (p+2),y + (p-3))) + double(pad(x + (p+2),y + (p-2))) + double(pad(x + (p+2),y + (p-1))) + double(pad(x + (p+2),(y+p)))  + double(pad(x + (p+2),y + (p+1))) + double(pad(x + (p+2),y + (p+2))) + double(pad(x + (p+2),y + (p+3))) ...
                    + double(pad(x + (p+3),y + (p-3))) + double(pad(x + (p+3),y + (p-2))) + double(pad(x + (p+3),y + (p-1))) + double(pad(x + (p+3),(y+p)))  + double(pad(x + (p+3),y + (p+1))) + double(pad(x + (p+3),y + (p+2))) + double(pad(x + (p+3),y + (p+3)));

                result = floor(sum/49);
                result_image_mean(x,y)= result;

         end
    end

    figure,imshow(result_image_mean),title('mean filter - ' + string(k));
```
در این حلقه به اندازه طول و عرض result_image_mean که مقدارش برابر با تصویر اصلی است پیمایش انجام می‌شود. مقدار پیکسل (x,y) تصویر نتیجه باید از مقادیر پیکسل‌های همسایه بدست آید. باتوجه به padding مقدار x,y تصویر pad از تصویر اصلی p تا جلوتر است. یعنی پیکسل (x,y) تصویر اصلی برابر با پیکسل (x+p,y+p) تصویر pad هست. حال به سراغ مشخص کردن همسایه‌ها در تصویر pad میرویم.
(x + (p-3),y + (p-3))|(x + (p-3),y + (p-2))|(x + (p-3),y + (p-1))|(x + (p-3),(y+p))|(x + (p-3),y + (p+1))|(x + (p-3),y + (p+2))|(x + (p-3),y + (p+3))
--- | --- | --- |--- | --- | --- |--- |
(x + (p-2),y + (p-3))|(x + (p-2),y + (p-2))|(x + (p-2),y + (p-1))|(x + (p-2),(y+p))|(x + (p-2),y + (p+1))|(x + (p-2),y + (p+2))|(x + (p-2),y + (p+3))
(x + (p-1),y + (p-3))|(x + (p-1),y + (p-2))|(x + (p-1),y + (p-1))|(x + (p-1),(y+p))|(x + (p-1),y + (p+1))|(x + (p-1),y + (p+2))|(x + (p-1),y + (p+3))
((x+p) ,y + (p-3))|((x+p) ,y + (p-2))|((x+p),y + (p-1))|((x+p),(y+p))|((x+p),y + (p+1))|((x+p),y + (p+2))|((x+p),y + (p+3))
(x + (p+1),y + (p-3))|(x + (p+1),y + (p-2))|(x + (p+1),y + (p-1))|(x + (p+1),(y+p))|(x + (p+1),y + (p+1))|(x + (p+1),y + (p+2))|(x + (p+1),y + (p+3))
(x + (p+2),y + (p-3))|(x + (p+2),y + (p-2))|(x + (p+2),y + (p-1))|(x + (p+2),(y+p))|(x + (p+2),y + (p+1))|(x + (p+2),y + (p+2))|(x + (p+2),y + (p+3))
(x + (p+3),y + (p-3))|(x + (p+3),y + (p-2))|(x + (p+3),y + (p-1))|(x + (p+3),(y+p))|(x + (p+3),y + (p+1))|(x + (p+3),y + (p+2))|(x + (p+3),y + (p+3))

مقدار y هر ستون به ترتیب با (p-۳)، (p-۲) و (p-۱) جمع می‌شود تا به y+p برسیم بعد رسیدن به ستون پیکسل اصلی مقادیر با (p+۳)، (p+۲) و (p+۱) جمع می‌شود. مقادیر x نیز بدین صورت تغییر می‌کنند که x به ترتیب با مقادیر(p-۳)، (p-۲) و (p-۱) جمع می‌شود تا به x+p برسیم بعد رسیدن به سطرپیکسل اصلی مقادیر با (p+۳)، (p+۲) و (p+۱) جمع می‌شود. جدول فوق‌اندیس همسایگان را نشان می‌دهد.

برای محاسبه فیلتر میانگین مجموع پیکسل‌های همسایه تقسیم بر تعداد(۴۹) می‌شود. نتیجه با تابع floor رند شده است و در تصویر نهایی قرار می‌گیرد. بعد اتمام حلقه خروجی نشان داده می‌شود.
```
for x=1:size(result_image_median,1)
             for y=1:size(result_image_median,2)
                   result_number = 0;
                   median = 0;

                   pixel_list = [double(pad(x + (p-3),y + (p-3)))   double(pad(x + (p-3),y + (p-2)))   double(pad(x + (p-3),y + (p-1)))   double(pad(x + (p-3),(y+p)))    double(pad(x + (p-3),y + (p+1)))   double(pad(x + (p-3),y + (p+2)))   double(pad(x + (p-3),y + (p+3))) ...  
                                 double(pad(x + (p-2),y + (p-3)))   double(pad(x + (p-2),y + (p-2)))   double(pad(x + (p-2),y + (p-1)))   double(pad(x + (p-2),(y+p)))    double(pad(x + (p-2),y + (p+1)))   double(pad(x + (p-2),y + (p+2)))   double(pad(x + (p-2),y + (p+3))) ...
                                 double(pad(x + (p-1),y + (p-3)))   double(pad(x + (p-1),y + (p-2)))   double(pad(x + (p-1),y + (p-1)))   double(pad(x + (p-1),(y+p)))    double(pad(x + (p-1),y + (p+1)))   double(pad(x + (p-1),y + (p+2)))   double(pad(x + (p-1),y + (p+3))) ...
                                 double(pad((x+p) ,y + (p-3)))      double(pad((x+p),y + (p-2)))       double(pad((x+p),y + (p-1)))       double(pad((x+p),(y+p)))        double(pad((x+p),y + (p+1)))       double(pad((x+p),y + (p+2)))       double(pad((x+p),y + (p+3))) ... 
                                 double(pad(x + (p+1),y + (p-3)))   double(pad(x + (p+1),y + (p-2)))   double(pad(x + (p+1),y + (p-1)))   double(pad(x + (p+1),(y+p)))    double(pad(x + (p+1),y + (p+1)))   double(pad(x + (p+1),y + (p+2)))   double(pad(x + (p+1),y + (p+3))) ...
                                 double(pad(x + (p+2),y + (p-3)))   double(pad(x + (p+2),y + (p-2)))   double(pad(x + (p+2),y + (p-1)))   double(pad(x + (p+2),(y+p)))    double(pad(x + (p+2),y + (p+1)))   double(pad(x + (p+2),y + (p+2)))   double(pad(x + (p+2),y + (p+3))) ...
                                 double(pad(x + (p+3),y + (p-3)))   double(pad(x + (p+3),y + (p-2)))   double(pad(x + (p+3),y + (p-1)))   double(pad(x + (p+3),(y+p)))    double(pad(x + (p+3),y + (p+1)))   double(pad(x + (p+3),y + (p+2)))   double(pad(x + (p+3),y + (p+3))) ];

                   median = sort(pixel_list);
                   result_number = median(25);
                   result_image_median(x,y)= result_number;

             end
    end       
    figure,imshow(result_image_median),title('median filter - ' + string(k));
 ```
 برای محاسبه فیلتر میانه مقادیر همسایگان مرتب شدند و مقدار وسط (۲۵) به عنوان حاصل انتخاب شده و در خروجی قرار می‌گیرد. درنهایت تصویر خروجی نشان داده می‌شود.

خروجی:

فیلتر میانگین:
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/mean1.png)
  ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/mean2.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/mean3.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/mean4.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/mean5.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/mean6.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/mean7.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/mean8.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/mean9.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/mean10.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/mean11.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/mean12.png)


فیلتر میانه:

 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/median1.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/median2.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/median3.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/median4.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/median5.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/median6.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/median7.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/median8.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/median9.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/median10.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/median11.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/13/median12.png)
 
