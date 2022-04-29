**سوال 12**<br>


```
clear,clc,close all
for im_num=1:12
    im=sprintf('/Users/Ali/Desktop/7sin/%d.jpg',im_num);
    ims=imread(im);
    gray=rgb2gray(ims);
```
یک حلقه for تمامی تصاویر را خوانده و به توسط rgb2gray خاکستری میشوند.
```
hist_equal=histeq(gray);
figure(13);
```
توسط کد فوق متعادل سازی هیستوگرام را بصورت تصویر متعادل شده نشان میدهد.
```
subplot(12,1,im_num)
histogram(gray);
hold on
subplot(12,1,im_num)
imhist(gray);
```
با دستورهای فوق نمودار هیستوگرام(رنگ آبی) و متعادل شده آن(رنگ قرمز) به صورت همزمان ترسیم میشود.  
```
 figure(im_num);
 imshowpair(gray,hist_equal,'montage');
end
```
با استفاده از کد فوق تصویر خاکستری و متعادل شده آن در کنار هم رسم میشوند.


خروجی :
<br>
<br>
هیستوگرام تصویر(نمودار آبی) و هیستوگرام متعادل شده(نمودار قرمز).
<br>

      
    

    
