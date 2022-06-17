هدف پروژه تشخیص اسکناس می باشد. که برای این منظور از روش بدست آوردن هیستوگرام تصویر استفاده شده است.

<br/>

در پروژه تشخیص و شناسایی اسکناس ایرانی یک تصویر اسکناس به عنوان ورودی برنامه داده می شود، در فایل MoneyDetector پیش پردازش روی آن انجام و ویژگی هایش استخراج شده و در داخل ستون های ماتریس ویژگی ذخیره می شود.

<br/>

سپس در فایل MoneyRecognizer با ویژگی تمام تصاویر موجود در پایگاه داده(پوشه data) مقایسه شده و مبلغ پول مشخص می شود. این روند به این صورت است که با تک تک ستون های ماتریس فایل دیگر مقایسه می شود و در صورتی که با یکی از ستون ها برابر باشد، مبلغ تصویر پول ورودی تشخیص داده می شود.

<br/>

حال می خواهیم کدها را بررسی کنیم:

<br/>

**فایل MoneyDetector:**

<br/>

در ابتدا دستوراتclc ، clear و close all برای پاک کردن صفحه Command Window، حذف متغیرها و بستن پنجره ها استفاده شده است.

```
clc;
clear;
close all;
```

در ماتریس F ویژگی تصاویر موجود در پوشه دیتا ذخیره می شود و به عنوان ورودی برای تشخیص اسکناس به کار می رود.

```
F=[];
```

به وسیله دستور imread تصاویر موجود در پوشه data را فراخوانی میکنیم.

<br/>

```
pwd
currentFolder = pwd;
for i=1:5
    x= imread(strcat(strcat(currentFolder, '\data\',num2str(i),'.jpg')));
    figure(i)
    subplot(1,3,1)
    imshow (x)
    title (' Main image ','color','b','FontSize', 12);
```

با کمک دستور rgb2gray تصاویر رنگی را به خاکستری تبدیل میکنیم تا بتوان به راحتی از هیستوگرام تصویر را به دست آورد.

<br/>

```
    x=rgb2gray(x);

```
برای نمایش تصاویر رنگی و خاکستری اسکناس به همراه نمودار هیستوگرام آن از دستور subplot در پنجره های figure استفاده میکنیم.

<br/>

```
    filter=fspecial ('gaussian', 15, 0.00000000001);
    kx=imfilter(x, filter);
    subplot(1,3,2)
    imshow (kx)
    title ('Grayscale Image','color','black','FontSize', 12);
    subplot(1,3,3)
```

با استفاده از تابع fspecial میتوان فیلترهای معمول در پردازش تصویر را ایجاد کرد.

<br/>

اعمال فیلتر در محیط متلب با استفاده از دستور imfilter انجام می پذیرد. این تابع، فیلتر مورد نظر را بر روی تصویر مشخص شده در دیگر پارامتر تابع اعمال کرده و نتیجه را به صورت ماتریسی بر می گرداند.

<br/>

```
    imhist (kx);
    [m,n]=imhist (kx);
    F(:,i)=m;

    title ('Histogram of image','color','b','FontSize', 10);

end
```

در محیط متلب، با دستور imhist می توان برای تصاویر خاکستری یک هیستوگرام رسم کرد که در این هیستوگرام، میزان به کار رفتن رنگ های مختلف و شدت نور در تصویر، نمایش داده می شودکه در اینجا شدت نور مد نظر است.

<br/>

سپس تابع MoneyRecognizer را که در ادامه توضیح میدهم فراخوانی میکنیم.

<br/>

**فایل MoneyRecognizer:**

<br/>

در این تابع تصویری که می خواهیم مبلغ آن تشخیص داده شود خوانده شده و همانند قبل پیش پردازش و هیستوگرام آن ترسیم می شود.

<br/>

```
function []=MoneyRecognizer(F)
pwd
currentFolder = pwd;
im=imread (strcat(currentFolder,'\data\2.jpg'));
figure (11)

subplot(1,2,1)
imshow (im)
% title (' Inpute Image','color','b','FontSize', 12);  
title([ 'Inpute {\color{blue}Image}']);
im=rgb2gray(im); 
fg=fspecial ('gaussian', 15, 0.00000000001);
kx=imfilter(im, fg);
[p,q]=imhist(kx);
subplot(1,2,2)
 imhist (kx)
title ([ 'Inpute {\color{blue}Image}' ]);

```

<br/>

همانند قبل هیستوگرام شدت نور را به دست آورده و با ویژگی سایر تصاویر مقایسه شده و در صورتیکه با ویژگی یکی از آن ها برابر باشد اسکناس تشخیص داده می شود.

<br/>

برای نمایش خروجی هم از دستور disp و uicontrol استفاده می‌شود.

<br/>

```
if F(:,1)==p
    disp('2000 tomani')
      uicontrol('Style', 'text', 'String', 'Result:2000 tomani ',...
           'FontSize', 11,...
          'foregroundcolor','r',...
   'Position', [70,20,200,20]);

      
elseif F(:,2)==p
    disp('5000 tomani')
     uicontrol('Style', 'text', 'String', 'Result:5000 tomani ',...
           'FontSize', 11,...
          'foregroundcolor','r',...
   'Position', [70,20,200,20]);

elseif F(:,3)==p
    disp('10000 tomani')
     uicontrol('Style', 'text', 'String', 'Result:10000 tomani ',...
           'FontSize', 11,...
          'foregroundcolor','r',...
   'Position', [70,20,200,20]);

elseif F(:,4)==p
    disp('50000 tomani')
     uicontrol('Style', 'text', 'String', 'Result:50000 tomani ',...
           'FontSize', 11,...
          'foregroundcolor','r',...
   'Position', [70,20,200,20]);

elseif F(:,5)==p
    disp('100000 tomani')
     uicontrol('Style', 'text', 'String', 'Result:100000 tomani ',...
           'FontSize', 11,...
          'foregroundcolor','r',...
   'Position', [70,20,200,20]);


else 
    disp('No detect')
             
end
end

```

<br/>

