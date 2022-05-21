سوال ۱۳
<br>

```
clear,clc,close all
for im_num=1:12
    im=sprintf('/Users/Ali/Desktop/7sin/%d.jpg',im_num);
    ims=imread(im);
    gray=rgb2gray(ims);
    im_noise=imnoise(gray,'salt & pepper',0.5);
```
تصاویر توسط یک حلقه for خوانده شده و به تصویر خاکستری تبدیل می شود. به تصویر خوانده شده نویز salt-pepper افزوده میشود.
```
h = fspecial('average',[7 7]);
```
طراحی یک فیلتر 7*7 از نوع میانگین طراحی میشود.
```
average_filter = imfilter(im_noise,h);

```
فیلتر طراحی شده بر روی تصویر حاوی نویز اعمال میشود.
```
    figure(im_num);
    imshowpair(im_noise,average_filter,'montage');
end
```
تصویر حاوی نویز و فیلتر شده در کنار هم نمایش داده میشود.
تصویر آلوده به نویز و تصویر بدون نویز در کنار هم نمایش داده میشود.
<br>
خروجی:
<br>![fig1](https://user-images.githubusercontent.com/56272972/166081616-09a815b9-926e-4aa4-9576-25ad4c5c98b9.jpg)
![fig2](https://user-images.githubusercontent.com/56272972/166081619-07e83a56-2c1b-4853-ac8c-8af99fd3db10.jpg)
![fig3](https://user-images.githubusercontent.com/56272972/166081624-104af652-acfb-4f8a-b7f6-aa1570c6ace7.jpg)
![fig4](https://user-images.githubusercontent.com/56272972/166081626-29e7e22a-8c48-4d7b-8a62-a2604e44760c.jpg)
![fig5](https://user-images.githubusercontent.com/56272972/166081628-200f2b78-5aa1-4f2b-bae8-f76cd222ca78.jpg)



