<div dir="rtl">
  
### برنامه ای بنویسید که padding تصویر را به گونه ای ایجاد کند که دقیقا خانه ی آخر کنار تصویر مجددا به عنوان padding تکرار شود.
  بعد از خواندن عکس ، چون در حوزه خاکستری کار می کنیم تصویر را به خاکستری تبدیل می کنیم.
  </br>
  ### input
  
  ![monarch]()
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
![graypad]()
  </div> 
 حال برای دادن پدینگ با یک لایه دور تا دور تصویر به صورت زیر عمل میکنیم:
  <div dir="ltr">
  
  ```
  img_siz = size(img);

padd = padarray(img,[1 1],'replicate','both');

figure, imshow(padd);
  ```
![pad1]()
  </div> 
 
 چون ممکن است در تصویر پدینگ انجام شده مشخص نباشد آنرا با 10 لایه هم انجام میدهیم. خروجی به صورت زیر می باشد:
  
  <div dir="ltr">
  
  ```
  img_siz = size(img);

padd = padarray(img,[10 10],'replicate','both');

figure, imshow(padd);
  ```
### output
  
![pad10]()
  </div> 
  <div dir="ltr">
  
  
  
  </div> 
 
  </div>
