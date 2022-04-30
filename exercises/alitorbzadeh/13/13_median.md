**تمرین 13**
<br>
``

```
clc;
close all;
clear;

for n=1:10
    img=imread(strcat('D:\7\',int2str(n),'.jpeg'));
    img=rgb2gray(img);
    noise_img=imnoise(img,'salt & pepper',0.4);
    filter=medfilt2(noise_img,[7 7]);
    figure(1);
    subplot(4,3,n),imshow(img),title('gray img');
    figure(2);
    subplot(4,3,n),imshow(noise_img),title('noise img');
    figure(3);
    subplot(4,3,n),imshow(filter),title('filter img');
end
```

بررسی کد قیلتر میانه : 
<br>
 از حلقه for برای پیمایش عکس های موجود  استفاده  می کنیم .که از یک تا 10 به تعداد عکس های موجود  می باشد  و عکس هارا خوانده و و خاکستری می کنیم سپس از دستور imnoise برای اضافه کردن نویز به تصویر استفاده می کنیم و بعد هم از دستور medfilt2 برا لز بین بردن نویزهای اضافه شده استفاده می کنیم که خروجی حاصل به صورت زیر می باشد :
  به ترتیب ابتدا خروجی تصاویر خاکستری و سپس تصاویر نویز دار و سپس تصاویر فیلتر اعمال شده می باشد:
  <br>
 
![outmed1](https://user-images.githubusercontent.com/94124607/166118731-4cad1def-b727-451d-820e-69d40b04a157.png)
![outmed2](https://user-images.githubusercontent.com/94124607/166118750-6417da69-17a6-4ff8-90ad-fe976580637d.png)
![outmed3](https://user-images.githubusercontent.com/94124607/166118766-7aa44df4-fd5c-4e22-ac44-2834a93bb750.png)




