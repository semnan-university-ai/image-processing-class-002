## Mean Filter & Middle Filter
#### فیلتر میانه و میانگین را با یک پنجره ی 7 در 7 روی تصاویر سفره هفت سین خود پیاده سازی کنید. (ابتدا تصویر خاکستری شود.)
##### ابتدا چند کد مربوط به خواندن تصویر و خاکستری کردن ان را داریم.
```
clc;
close all;
clear;
image = imread('peppers.png');
image1 = rgb2gray(image);
```
##### در این قسمت سایز تصویر را یافته و padding را روی ان اعمال می کنیم.چون پنجره 7 در 7 است. ماتریس جدیدی به نام image2 ساخته که سایز آن از سطر و ستون 6 پیکسل از قبلی بالاتر است.
```
[a,b] = size(image1);
image2 = zeros(a+6,b+6);
image2(4:end-3,4:end-3) = image1;
[m,n] = size(image2);
```
##### حال یک پنجره بنام matrix تعریف میکنیم 7 در 7 و یک image3 برای نمایش تصویر نهایی که سایز این تصویر را همام سایز تصویر خاکستری در نظر میگیریم.
```
matrix = ones(7,7);
image3 = zeros(a,b)ک
```
##### برای یافتن میانگین هر پیکسل با کمک پنجره همسایگی 7 در 7 به صورت زیر عمل کردیم. بعد از یافتن میانگین هر پنجره مقدار ان در image3 ریخته میشود. برای هر i وj جدید mi را صفر قرار می دهیم .  
```
for i= 4 : m-3
    for j= 4 : n-3
        mi=0;
        for k1 = 1 : 7
            for k2 = 1 : 7
                s = matrix(k1,k2)*image2(i-4+k1,j-4+k2);
                mi = mi + s;
            end           
        end
        image3(i-3,j-3)= round(mi/49);
    end
end 
```
##### در نهایت برای نمایش تصویر اصلی و تصویر میانگین گیری شده از دستور figure  استفاده میکنیم. تصاویر 2و 5و 7و 10 و12 را فیلتر زده و نمایش دادیم.
##### تصویر 2 هفت سین

![min](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc13/fig2.13.jpg)
##### تصویر5
![min](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc13/fig5.13.jpg)
##### تصویر 7
![min](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc13/gig7.13.jpg)
##### تصویر 10
![min](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc13/pic10.13.jpg)
##### تصویر 12
![min](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc13/pic12.13.jpg)
##### حال دستورات زیر برای یافتن میانه یک تصویر با پنجره همسایگی 7 در 7 را داریم. ابتدا خواندن تصویر .سپس خاکستری کردن و padding  آن و درادامه یافتن میانه هر پنجره و جایگذاری این پیکسل در تصویر جدید که در اینجا بنام image3 می باشد.
```
clc;
close all;
clear;
image = imread('1.jpg');
image1 = rgb2gray(image);
[a,b] = size(image1);
image2 = zeros(a+6,b+6);
image2(4:end-3,4:end-3) = image1;
[m,n] = size(image2);
image3 = zeros(size(image1));

for i = 4 : m-3
    for j = 4 : n-3
        g = image2(i-3:i+3,j-3:j+3);
        c = median(g(:));
        image3(i-3,j-3)= c;
    end
end
```
##### برای رسم نیز از دستور figure , subplot استفاده شده است.
