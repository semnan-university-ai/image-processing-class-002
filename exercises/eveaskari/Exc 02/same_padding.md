<div dir="rtl">
  
### برنامه ای بنویسید که padding تصویر را به گونه ای ایجاد کند که دقیقا خانه ی آخر کنار تصویر مجددا به عنوان padding تکرار شود.
  بعد از خواندن عکس ، چون در حوزه خاکستری کار می کنیم تصویر را به خاکستری تبدیل می کنیم.
  </br>
  ### input
  
  ![monarch](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2002/monarch.png)
  </br>
  
 <div dir="ltr">
  
  ```
  clc;
close all;
clear;

img = imread("MATLAB/monarch.png");
img = rgb2gray(img);
img = imresize(img, [300 400]);

figure, imshow(img);

  ```
![graypad](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2002/graypad.JPG)
  </div> 
 حال برای دادن پدینگ با یک لایه دور تا دور تصویر به صورت زیر عمل میکنیم:
  <div dir="ltr">
  
  ```
  img_siz = size(img);

padd = padarray(img,[1 1],'replicate','both');

figure, imshow(padd);
  ```
![pad1](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2002/pad1.JPG)
  </div> 
 
 چون ممکن است در تصویر پدینگ انجام شده مشخص نباشد آنرا با 10 لایه هم انجام میدهیم. خروجی به صورت زیر می باشد:
  
  <div dir="ltr">
  
  ```
  img_siz = size(img);

padd = padarray(img,[10 10],'replicate','both');

figure, imshow(padd);
  ```
### output
  
![pad10](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2002/pad10.JPG)
  </div> 
 
 
  </div>
