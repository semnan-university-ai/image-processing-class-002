<div dir="rtl">
  
 
## برنامه ای بنویسید که نیمه ی بالایی یک تصویر را نگاتیو کند.

### تصویر ورودی:

  ![input](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin4/imaget2.jpg)
  </br>
  
  به کمک دستور زیر تصویر را به حالت خاکستری می بریم و اندازه تصویر را کوچک می کنیم:
  </br>
  
  <div dir="ltr">
  
```
clc;
close all;
clear;

im = imread('/Users/s.ali.motavally/Desktop/tamrin4/imaget2.jpg');
img = imresize(im, [450 550]);
gray_img =rgb2gray(img);
```
</div>

سپس در حلقه ای سطر ها را از یک تا نصف تصویر و ستون را از نصف تا بالای تصویر نگاتیو می نماییم.برای نگاتیو کردن تصویر کافیست مقدار هر پیکسل را از 255 کم کنیم
  <div dir="ltr">
  
```
[x, y] = size(gray_img);
for i = 1 : x/2
    for j = 1 : y
        gray_img(i,j) = 255 - gray_img(i,j) ;   
    end
end

imshow(gray_img)
```
</div>  

### خروجی:
 ![output](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin4/negimg.jpg)
