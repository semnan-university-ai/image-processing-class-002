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
![fig](https://user-images.githubusercontent.com/56272972/166078434-d7a3dc4f-902b-45d4-931f-bb87909c8a5e.jpg)   
<br>
نمونه ای از تصویر که هیستوگرام آن متعادل شده
<br>
![fig1](https://user-images.githubusercontent.com/56272972/166078763-04c01dff-a6f2-43d2-ba91-1256a466166c.jpg)
<br>
![fig3](https://user-images.githubusercontent.com/56272972/166079157-be60834a-aa07-435c-a66f-8e992b9ae2d2.jpg)
<br>
![fig4](https://user-images.githubusercontent.com/56272972/166079266-3e982287-832c-4ad2-8dbc-fd2060c35884.jpg)
