<div dir="rtl">
  
  ## برنامه ای بنویسید که تمام پیکسل های تصویر را 50 درجه روشن تر کند.
  ### تصویر ورودی:
  
  ![input](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin5/imaget2.jpg)
  
  به کمک کد زیر تصویر را از RGBبه Gray تبدیل می کنیم و همین طور سایز تصویر را کوچک می کنیم:
  
  <div dir="ltr">
  
  ```
clc;
clear;
close all;

im = imread('/Users/s.ali.motavally/Desktop/tamrin5/imaget2.jpg');
img = imresize(im, [450 550]);
gray_img =rgb2gray(img);
figure, imshow(gray_img);

```
</div>

![gray](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin5/gray_im.jpg)

در نهایت به کمک کد زیر تمامی پیکسل های تصویر را 50 واحد افزایش می دهیم:

<div dir="ltr">
  
  ```
[x,y] = size(gray_img);
for i = 1:x
    for j = 1:y
        gray_img(i,j) = gray_img(i,j)+50;
    end
end

figure, imshow(gray_img);

```
</div>

![output](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin5/end_img.jpg)

