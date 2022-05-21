<div dir="rtl">
  
### برنامه ای بنویسید که padding تصویر را به گونه ای ایجاد کند که دقیقا خانه ی آخر کنار تصویر مجددا به عنوان padding تکرار شود.
  تصویر اصلی: 
  </br>
   </br>
    ![im](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin2/imaget2.jpg)
  </br>
  
  بعد از خواندن عکس ،  تصویر را به خاکستری تبدیل می کنیم.
  <div dir="ltr">
  
 ```
  clc;
close all;
clear;

img = imread('/Users/s.ali.motavally/Desktop/tamrin2/imaget2.jpg');
img = rgb2gray(img);
img = imresize(img, [450 550]);

figure, imshow(img);

  ```
  </div> 

![grayim](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin2/grayim.png)
</br>
  

 سپس با دستور زیر عملیات پدینگ رو دور تصویر انجام می دیم:
  <div dir="ltr">
  
   ```
    img_siz = size(img);

    padd = padarray(img,[10 10],'replicate','both');

    figure, imshow(padd);
  ```
</div> 
 خروجی به صورت زیر خواهد بود:
 <div dir="ltr">  
  
![pad](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin2/paddim.png)
</div> 
 
</div>
