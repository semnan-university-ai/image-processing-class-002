# بهینه سازی هیستوگرام  
## توضیح کد:
این کد در ابتدای همه برنامه ها موجود است و محیط کار در متلب  و متغیر ها و حافظه استفاده شده در برنامه های قبلی را پاک می کند و
همه آپشن های باز را می بندد تا تلاقی در مقدار متغیرها یا فایل ها رخ ندهد.
```
clc;
clear;
close all;
```
دستور dir فایل ها و پوشه ها را در پوشه فعلی لیست می کند و دستور fullfile یک بردار کاراکتر حاوی مسیر کامل فایل را در فرمت jpg برمی گرداند. به تعداد 12 عکس مورد نظر باید 
میانه و میانگین محاسبه شوند . در خط بعدی تصویر در picture  قرار میگیرد و imread عکس خوانده میشود. در نهایت img2  تصویر فرمت خاکستری عکس خوانده شده است.
ماتریس img2  در  img3  کپی میشود و سایز img2  را برای استفاده به عنوان متغیر حلقه حساب میکنیم .

```
path='C:\Users\Mobina\Desktop\term 4\tamrin -hal-tamrin\12';
folder=dir(fullfile(path,'*.jpg'));

for num=1:12
    picture=fullfile(path,folder(num).name);
    img1=imread(picture);
    img2 = rgb2gray(img1);
    img3 = img2;
    [row,column] = size(img2);


```
 با این قطعه کد تعداد تکرار مقدار هر پیکسل از این قطعه کد استفاده میکنیم .مقدار تکرار هر کدام از مقادیر 0 تا 255 که در ماتریس اصلی تصویر عستند در ماتریس numpixel  ذخیره میشود. چون در متلب اندیس از 1 شروع میشود هر پیکسل +1 میشود تا امکان شمارش مقدار صفر هم باشد .  

```
 NumPixel = zeros(1,256);
    for i = 1:row
        for j = 1:column
        NumPixel( img2(i,j) + 1 ) = NumPixel( img2(i,j) + 1 ) + 1;
        end
    end
    
```


احتمال وقوع هر پیکسل سطح خاکستری را محاسبه میکند:
```
 ProbPixel = zeros(1,256);
    for i = 1:256
        ProbPixel(i) = NumPixel(i) / (row * column * 1.0);
    end

```

تابع توزیع تجمعی هر کدام از پیکسل ها از مقدار 0 تا 255 را محاسبه میکند
```
 Cumupixel = zeros(1,256);
    for i = 1:256
        if i == 1
            Cumupixel(i) = ProbPixel(i);
        else
            Cumupixel(i) = Cumupixel(i - 1) + ProbPixel(i);
        end
    end
```
یک تبدیل برای تولید یک تصویر جدید ایجاد میکند و تصویر جدید را محاسبه میکند.
```
    Map = zeros(1,256);
    for i = 1:256
        Map(i) = uint8(255 * Cumupixel(i) + 0.5);
    end
    
    for i = 1:row
        for j = 1:column
            img2(i,j) = Map(img2(i,j) + 1);
         end
    end
    
```
در نهایت تصاویر و هیستوگرام آنها را نمایش میدهد.
```
figure,imshow(img1);title('color-ful image');
figure,imhist(img1);title('hist of color-ful image');
figure,imshow(img3);title('gray_scale image');
figure,imhist(img3);title('hist of gray_scale image');
figure,imshow(img2);title('equalized image');
figure,imhist(img2);title('hist of equalized image');

```
![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/mobina-t77/12/Screenshot%20(198).png)
