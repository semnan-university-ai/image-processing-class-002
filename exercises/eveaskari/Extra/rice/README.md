<div dir="rtl">
  
  ### کدی بنویسید که با آن بتوان دانه های برنج را در یک تصویر شمرد.
  </br>
  
  در این روش ابتدا تصویر را میخوانیم آن را به باینری تبدیل می کنیم. سپس در یک ها تمام نقاطی که بهم متصل هستند را می شماریم.
  </br>
   در این روش اگر چند دانه برنج به هم چسبیده باشد آن ها را یک دانه حساب میکند.
  </br>
  
<div dir="ltr">
  
```
clc;
clear;
close all;

img = rgb2gray(imread('rice2.png'));

BW = imbinarize(img);
% Get the number of connected components
count = bwconncomp(BW);
Num = count.NumObjects;

figure, imshow(img),title(['number of rice', num2str(Num)]);
```
  
  </br>
  
![rice](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Extra/rice/rice-count.JPG)

  </div>
  </div>
