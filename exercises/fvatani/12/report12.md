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
    finalResult = uint8(zeros(size(image)));
    frequncy = zeros(256,1);
    cdf = zeros(256,1);
    result = zeros(256,1);
    sum =0;
```
حلقه به تعداد فایل‌های موجود پوشه تکرار می‌شود. نام فایل در انتهای متغیر folder که مسیر را نشان می‌دهد قرار می‌گیرد. متغیر با تابع imread خوانده شده و در image ذخیره می‌شود. تصویر rgb ورودی نیز با دستور rgb۲gray خاکستری شده است. مقداردهی اولیه متغیر‌ها با صفر انجام می‌شود. finalResult شامل پیکسل‌هایی نهایی تصویر است به همین جهت آن را به اندازه طول و عرض تصویر مقدار صفر می‌دهیم. سایر متغیر‌ها (frequncy، cdf، cummlative و result) به تعداد ۲۵۵ که مقدار رنگ‌ها است مقدار دهی صفر می‌شوند.

```
 for x = 1:size(image,1)
        for y = 1:size(image,2)
            value = image(x,y);
            frequncy(value+1) = frequncy(value+1)+1;
        end
 end
```
درحلقه به اندازه طول و عرض تصویر پیمایش انجام می‌شود. درایه i متغیر frequncy نشان دهنده تعداد تکرار پیکسل i در تصویر است. ‌اندیس‌ها در متلب از یک شروع می‌شوند برای اینکه بتوان تعداد پیکسل صفر را نیز ذخیره کرد‌اندیس‌ها به علاوه یک شدند. مقدار هر پیکسل در متغیر value ذخیره می‌شود و مقدار قبلی‌اندیس مربوطه با یک جمع می‌شود.
```
for x = 1:size(cdf)
    sum =sum +frequncy(x);
    cdf(x) = sum;
end
```
برای به دست اوردن مقدار cdf تعداد تکرار هر پیکسل باید با مجموع تعداد پیکسل‌های قبل از خود جمع شود. مقدار اولیه sum صفر است. در مرحله اول با تعداد تکرار پیکسل صفر که در frequncy(۱) قرار دارد جمع شده و در cdf(۱) قرار می‌گیرد. در مرحله دوم sum تعداد تکرار پیکسل صفر را با خود دارد. حال این مقدار با frequncy(۲) جمع شده و در cdf(۲) ذخیره می‌شود. این کار برای تمامی ۲۵۵ رنگ انجام می‌شود.
```
for x = 1:size(result)
    result(x) =round((((cdf(x)- min(cdf))/(max(cdf)-min(cdf))))*255);
end
```
برای بدست اوردن مقادیر نهایی از فرمول استفاده شده است. از تابع round برای رند کردن و بدست اوردن مقدار صحیح استفاده شده است. توابع min و max کوچکترین و بزرگترین مقدار cdf را بر می‌گردانند.
```
for x = 1:size(image,1)
    for y = 1:1:size(image,2)
        finalResult(x,y) = result(image(x,y) + 1);
    end
end
```
متغیرimage(x، y) مقدار پیکسل قبلی را نشان می‌دهد. مقدار جدید در result قرار گرفته است و چون ایندکس‌ها از یک شروع می‌شود مقدار با یک جمع شده است. در نهایت مقدار در finalResult قرار می‌گیرد. برای مثال اگر image(x، y) مقدار ۱۰ را برگرداند مقدار جدید برای رنگ ۱۰ در‌اندیس ۱۱ result قرارگرفته است. به همین جهت مقدار image(x، y)+۱ در finalResult قرار می‌گیرد.
```
figure(k);                 
subplot(1,2,1),imshow(image),title('original image - ' + string(k));
subplot(1,2,2),imshow(finalResult),title('histogram equalization - ' + string(k));
```
به کمک تابع subplot دو تصویر اصلی و حاصل را کنار هم قرارمی‌دهیم و خروجی نمایش داده می‌شود.

نتایج:


![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/12/1.png)
![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/12/2.png)
![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/12/3.png)
![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/12/4.png)
![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/12/5.png)
![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/12/6.png)
![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/12/7.png)
![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/12/8.png)
![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/12/9.png)
![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/12/10.png)
![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/12/11.png)
![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/12/12.png)
