### Exercise 15
```
clc;
close all;
clear;

RGBimage = imread("fruit.jfif");
[x,y,~] = size(RGBimage);

for i = 1 : 1 : x
    for j = 1 : 1 : y
        grayImage(i,j) = 0.299 * RGBimage(i,j,1) + 0.587 * RGBimage(i,j,2) + 0.114 * RGBimage(i,j,3) ;
    end
end

subplot(1,2,1), imshow(RGBimage), title('RGB Scale Image');
subplot(1,2,2), imshow(grayImage), title('Gray Scale Image');
```
#### بررسی کد :
جهت اجرای بهتر کدها در متلب، بهتر است سه دستور اول در ابتدای هر برنامه نوشته شود. 
<br/>
در ادامه تصویر رنگی خود را می خوانیم و درسایز آن را نیز در متغیری نگه می داریم.
```
clc;
clear;
close all;
RGBimage = imread("fruit.jfif");
[x,y,~] = size(RGBimage);
```
حال قصد داریم این تصویر رنگی را به تصویری خاکستری تبدیل کنیم .
<br/>
 روش مستقیمی که می توان استفاده کرد به صورت زیر است :
 
```
gray = rgb2gray(RGBimage);

```
اما می خواهیم تابع درون آن را بنویسیم . دو روش آن در کلاس حل تمرین بررسی شد اما روش سوم که روش استانداری برای این تبدیل است به شرح زیر می باشد "
```
for i = 1 : 1 : x
    for j = 1 : 1 : y
        grayImage(i,j) = 0.299 * RGBimage(i,j,1) + 0.587 * RGBimage(i,j,2) + 0.114 * RGBimage(i,j,3) ;
    end
end
```
در این حلقه for بر روی پیکسل های تصویر حرکت کرده و مقادیر مربوط به کانال قرمز را در 0.299 و مقادیر مربوط به کانال سبز را در 0.587 و مقادیر مربوط به کانال آبی را در 0.114 ضرب ، در انتها با هم جمع و مقدار gray level پیکسل به دست آمده را
در ماتریس grayImage ذخیره می کنیم. 
<br/>
در نهایت تصویر رنگی و خاکستری شده آن در کنار هم به نمایش در خواهد آمد .   

```
subplot(1,2,1), imshow(RGBimage), title('RGB Scale Image');
subplot(1,2,2), imshow(grayImage), title('Gray Scale Image');
```
نتیجه به صورت زیر می باشد : 
<br/>
![Result]()
<br/>
این روند را میتوان به این صورت هم جلو برد که ابتدا کانال های قرمز و سبز و آبی را در متغیرهایی جدا از هم دخیره کرده ، سپس هر کدام را در ضریب خاص خود ضرب، مجموع آن به ازای هر پیکسل را مقدار gray level آن پیکسل قرار دهیم .
<br/>
بار محاسباتی اضافه بر سیستم تحمیل می شود ولی قابل انجام است .
کد آن به صورت زیر می باشد :
```
clc;
close all;
clear;

RGBimage = imread("fruit.jfif");
RedChannel = RGBimage(:, :, 1);
GreenChannel = RGBimage(:, :, 2);
BlueChannel = RGBimage(:, :, 3);

grayImage = 0.299 * RedChannel + 0.587 * GreenChannel + 0.114 * BlueChannel;

subplot(1,2,1), imshow(RGBimage), title('RGB Scale Image');
subplot(1,2,2), imshow(grayImage), title('Gray Scale Image');
```
