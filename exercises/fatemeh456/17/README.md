### Exercise 17
#### Function
```
function cropimg = crop_image(image,row_start,col_start,row_end,col_end)

crop_img = image(row_start:row_end ,col_start:col_end , : );
figure(1), imshow(image) , title('original Image')
figure(2), imshow(crop_img) , title('Cropped Image')

end
```
#### Main
```
clc;
clear;
close all;
img = imread('fruit.jfif');
crop_image(img,20,60,160,200)
```
#### بررسی کد :
در تابع ، مختصات (x1,y1) و (x2,y2) را به همراه تصویر ورودی گرفته و مقادیر پیکسل های میان این دو نقطه را در متغیر جدیدی به نام crop_img میریزیم.
<br/>
از x1 تا x2 در جهت سطرها، از y1 تا y2 در جهت ستون ها و مقادیر هر سه کانال قرمز و سبز و آبی در این متغیر قرار می گیرد تا تصویر خروجی نیز بصورت رنگی باشد.
<br/>
این متغیر تصویر crop شده را در خود دارد و در نهایت تصویر اصلی و تصویر برش خورده را به نمایش در می آوریم .
<br/>
در برنامه اصلی ، جهت اجرای بهتر کدها در متلب، بهتر است سه دستور اول در ابتدای هر برنامه نوشته شود. 
در ادامه تنها کافیست تصویر را خوانده و تابع crop_image را فراخوانی کنیم .

####تصویر اصلی
![Original](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/17/Original%20Image.PNG)
####تصویر برش خورده
![Result](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/17/Cropped%20Image.PNG)
