سوال ۱۳
<br>

```
clear,clc,close all
for im_num=1:12
    im=sprintf('/Users/Ali/Desktop/7sin/%d.jpg',im_num);
    ims=imread(im);
    gray=rgb2gray(ims);
    im_noise=imnoise(gray,'salt & pepper',0.4);
```
تصاویر توسط یک حلقه for خوانده شده و به تصویر خاکستری تبدیل می شود. به تصویر خوانده شده نویز salt-pepper افزوده میشود.
```
median_filter = medfilt2(gray,[7 7]);
```
فیلتر median با سایز [7 7] بر روی تصویر خاکستری اعمال میشود.
```
 figure(im_num);
    imshowpair(im_noise,median_filter,'montage');
end
```
تصویر آلوده به نویز و تصویر بدون نویز در کنار هم نمایش داده میشود.
<br>
خروجی:
<br>
![fig1](https://user-images.githubusercontent.com/56272972/166080568-fa1956c7-b319-49c5-974d-9f49770ee149.jpg)
![fig2](https://user-images.githubusercontent.com/56272972/166080587-3cedebaa-ca2a-4454-b449-38f3e2cd80fb.jpg)
![fig3](https://user-images.githubusercontent.com/56272972/166080596-111a3ade-a3ec-4637-9c78-3c9ec5cabdc5.jpg)
![fig4](https://user-images.githubusercontent.com/56272972/166080603-93b78142-0eae-4ff8-80df-f8114680e1e7.jpg)
