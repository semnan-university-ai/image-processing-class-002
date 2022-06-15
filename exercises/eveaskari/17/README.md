<div dir="rtl">
  
 ### تابعی برای crop کردن تصویر بدون توابع آماده ی متلب بنویسید. 
  
  </br>
  
  برای اینکار تابع و متغیرهای ورودی مسئله را تعریف میکنیم سپس مختصات ابتدایی و انتهایی که قرار است برش داده شود را گرفته و از همان نقاط ابتدایی تا انهایی را نمایش می دهیم.  
  </br>
  بصورت زیر:
  </br>
  
  <div dir="ltr">
  
  ```
function crop = crop_func(img,xi,yi,xj,yj)
img = imread(img);
crop = img(xi:xj, yi:yj, :);

%figure, imshowpair(img, crop, 'montage');
figure;
subplot(1,2,1), imshow(img), title('Original Image');
subplot(1,2,2), imshow(crop), title('Croped Image');

end
  ```
  
  </br>
  
  </div>
  
  </br>
  برای تست کارمان تابع را یکبار اجرا میگیریم:
  </br>
  
  <div dir="ltr">
  
  ```
clc;
close all;
clear;

img = crop_func('MATLAB/baboon.png',30,50,490,450);
  ```
  
  </br>
  
  </div>
  
  </br>
  نتیجه به صورت زیر می باشد:
  </br>
  
  ![crop](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2017/crop.JPG)
  
  </div>
