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
تابع dir فایل ها را در پوشه فعلی لیست می کند و fullfill یک بردار کاراکتر حاوی مسیر کامل فایل را برمی گرداند. متغیر I  ساختاری است شامل نام، پوشه، تاریخ،  بایت ها و متغیر isdir که اگر پوشه‌ای در مسیرباشد مقدار یک می‌گیرد را نشان می‌دهد. در نهایت میتوان به تمام فایل‌ها با پسوند jpg در پوشه مسیر دسترسی داشت.
```
for k=1:numel(I)
    filename=fullfile(folder,I(k).name);
    image=imread(filename);
     
    finalResult = uint8(zeros(size(image)));
    frequncy = zeros(256,1);
    pdf = zeros(256,1);
    cdf = zeros(256,1);
    cummlative = zeros(256,1);
    result = zeros(256,1);
    sum =0;
```
حلقه به تعداد فایل‌های موجود پوشه تکرار می‌شود. نام فایل در انتهای متغیر folder که مسیر را نشان می‌دهد قرار می‌گیرد. متغیر با تابع imread خوانده شده و در image ذخیره می‌شود. مقداردهی اولیه متغیرها با صفر انجام می‌شود. finalResult شامل پیکسل‌هایی نهایی تصویر است به همین جهت آن را به اندازه طول و عرض تصویر مقدار صفر می‌دهیم. سایر متغیرها frequncy، pdf، cdf ) cummlative  و result) به تعداد 256 که مقدار رنگ‌ها است مقدار دهی صفر می‌شوند.
```
for x = 1:size(image,1)
        for y = 1:size(image,2)
            val = image(x,y);
            frequncy(val+1) = frequncy(val+1)+1;
            pdf(val+1) = frequncy(val+1)/(size(image,1)*size(image,2));
        end
    end
```
