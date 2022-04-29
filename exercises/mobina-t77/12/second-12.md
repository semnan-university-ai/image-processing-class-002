# بهینه سازی هیستوگرام  
## توضیح کد:
این کد در ابتدای همه برنامه ها موجود است و محیط کار در متلب  و متغیر ها و حافظه استفاده شده در برنامه های قبلی را پاک می کند و
همه آپشن های باز را می بندد تا تلاقی در مقدار متغیرها یا فایل ها رخ ندهد.
```
clc;
clear;
close all;
```
دستورdir فایل ها و پوشه ها را در پوشه فعلی لیست می کند و دستور fullfile یک بردار کاراکتر حاوی مسیر کامل فایل را در فرمت jpg برمی گرداند. 
به تعداد 12 عکس باید هیستوگرامشان بهینه سازی شود محاسبه شوند . در خط بعدی تصویر با فرمت jpg در تحت عنوان مسیر ذکر شده در picture  قرار میگیرد و
باimread عکس خوانده میشود. در نهایت img2  تصویر فرمت خاکستری عکس خوانده شده است. ماتریس img2  در  img3  کپی میشود و سایز img2  را برای استفاده 
به عنوان متغیر حلقه حساب میکنیم .

```
path='C:\Users\Mobina\Desktop\term 4\tamrin -hal-tamrin\12';
folder=dir(fullfile(path,'*.jpg'));


for num=1:12
    picture=fullfile(path,folder(num).name);
    img1=imread(picture);
    img2 = rgb2gray(img1);
    [row,column] = size(img2);


```

با این قطعه کد تعداد تکرار مقدار هر پیکسل از این قطعه کد استفاده میکنیم .مقدار تکرار هر کدام از مقادیر 0 تا 255 که در ماتریس اصلی تصویر هستند.
در ماتریس numpixel  ذخیره میشود. چون در متلب اندیس از 1 شروع میشود هر پیکسل +1 میشود تا امکان شمارش مقدار صفر هم باشد . یعنی مقدار 0 در خانه1 ماتریس ذخیره
میشود.


```
 NumPixel = zeros(256,1);
    for i = 1:row
        for j = 1:column
        NumPixel( img2(i,j) + 1 ) = NumPixel( img2(i,j) + 1 ) + 1;
        end
    end
    
```

در این قسمت کد مجموع مقادیر به ازای هر پیکسل و در نهایت تابع توزی تجمعی یا cdf  محاسبه میشود 
```
 cdf=zeros(256,1);
    total=0;
    for i = 1:256
        total = total + NumPixel(i);
        cdf(i) = total;
    end

```
در این قسمت کد مقدار جدید هر پیکسل با توجه به cdf  محاسبه میشود . تابع  max و  min  به ترتیب بیشترین و کمترین مقدار در ارایه cdf  را بر میگرداند و 
تابع round  در نتیجه خروجی را گرد میکند. تا عدد صحیح بهمون بدهد.
```
    New=zeros(256,1);
    for i = 1:256
        New(i) = round((((cdf(i)- min(cdf))/(max(cdf)-min(cdf))))*255);
    end
```
در نهایت ارایه cdf به ارایه img3 منتقل میشود که خروجی نهایی ما میشود.
```
    img3=uint8(zeros(size(img2)));
    for i = 1:row
         for j = 1:column
            img3(i,j) = New(img2(i,j) + 1);
         end
    end
```
در نهایت هم خروجی ها نشان داده میشوند:(روی تنها یک عکس خروجی گرفته شده است)
```
figure,imshow(img1);title('color-ful image');
figure,imhist(img1);title('hist of color-ful image');
figure,imshow(img2);title('gray_scale image');
figure,imhist(img2);title('hist of gray_scale image');
figure,imshow(img3);title('equalized image');
figure,imhist(img3);title('hist of equalized image');
```
![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/mobina-t77/12/Screenshot%20(202).png)
