
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
به تعداد سطر و ستون‌ها تصویر پیمایش می‌شود. مقدار هر پیکسل با دستور de۲bi به باینری تبدیل می‌شود. بیت هشتم باینری ذخیره می‌شود. درنهایت تصویر نمایش داده می‌شود.
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/18/tamrin18-1.png)

```
if hrow > row || hcol > col
    scale = min([row/hrow,col/hcol]);
    binaryImage = imresize(binaryImage,scale);
    [hrow, hcol] = size(binaryImage);
end
```
در صورتیکه ابعاد تصویر دوم بیشتر از تصویر اصلی باشد، اندازه تصویر دوم را تغیر می‌دهیم. در این تابع اگر مقدار scale بین ۰ تا ۱ باشد تصویر خروجی کوچکتر از تصویر ورودی می‌شود و اگر بزرگتر از یک باشد تصویر خروجی بزرگتر می‌شود. اگر مقدار 5. 1 باشد تصویر ۵۰ درصد افزایش سایز دارد. برای تعیین میزان scale سایز تصویر اصلی را بر تصویر دوم تقسیم کرده و کوچکترین مقدار انتخاب می‌شود.
```
if hrow < row || hcol < col
    wmImage = zeros(size(hiddenImage),'uint8');
    for y = 1:col
        for x =1:row
            wmImage(x,y)=hiddenImage(mod(x,hrow)+1,mod(y,hcol)+1);
        end
    end
    wmImage = wmImage(1:row,1:col);
else
    wmImage = hiddenImage;
end
```
اگر مقدار دو تصویر یکسان باشد مقدار تصویر دوم به عنوان wmImage ذخیره می‌شود و اگر مقدارش از تصویر اصلی کوچکتر بود تصویر دوم در سراسر تصویر اصلی کاشی می‌شود. متغیر wmImage به اندازه تصویر اصلی مقداردهی صفر می‌شود. به اندازه طول و عرض تصویر اصلی پیمایش انجام می‌شود. مقدارهر پیکسل hiddenImage درپیکسل wmImage ذخیره می‌شود. mod(x، hrow) شامل پیکسل‌های ۰ تا hrow-۱ می‌شود. برای حل مشکل دسترسی به ایندکس صفر مقادیر با یک جمع شده‌اند. حال اگر مقدار طول و یا عرض تصویر اصلی بیشتر باشد با دستور mod می‌توان مقداری تکراری برای پیکسل ذخیره کرد. برای مثال اگر تصویر ۱۰۰ سطر داشته باشد مقدار پیکسل اول mod(۱۰۱، ۱۰۰) برای آن ذخیره می‌شود.
```
for y= 1:size(wmImage,1)
    for x = 1:size(wmImage,2)
        for k=1:3
        wmImage(x,y,k) = bitset(image(x,y),1,hiddenImage(x,y));
        end
    end
end

figure(2);
imshow(wmImage,[]); title('Watermarked Image');
```
دستور bitset مقدارimage را با بیت اول hiddenImage که کم ارزش‌ترین است بر می‌گرداند. این کار برای تمامی پیکسل‌ها انجام می‌شود. درنهایت تصویر نمایش داده می‌شود.
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/18/tamrin18-2.png)
 
 
 **روش مخفی کردن خود را توضیح دهید**
هر پیکسل سه مقدار دارد (RGB)، هر مقدار ۸ بیتی است (به این معنی است که می‌توانیم ۸ مقدار باینری را ذخیره کنیم) و سمت راست‌ترین بیت‌ها اهمیت کمتری دارند. بنابراین، اگر ما سمت راست‌ترین بیت‌ها را تغییر دهیم، تأثیر کمی روی تصویر نهایی خواهد داشت. این کلید استگانوگرافی برای پنهان کردن یک تصویر در تصویر دیگر است. بیت‌های کم‌اهمیت‌تر را از یک تصویر تغییر می‌دهیم.

