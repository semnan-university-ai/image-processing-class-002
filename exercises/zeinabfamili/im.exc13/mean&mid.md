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
##### در نهایت برای نمایش تصویر اصلی و تصویر میانگین گیری شده از دستور figure  استفاده میکنیم.
![mean](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/benchmark/airplane.png)
