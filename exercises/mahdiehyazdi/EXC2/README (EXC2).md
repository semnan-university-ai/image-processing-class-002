<div dir="rtl">
<h3>برنامه ای بنویسید که padding تصویر را به گونه ای ایجاد کند که دقیقا خانه ی آخر کنار تصویر مجددا به عنوان padding تکرار شود.</h3><br/>


در ابتدا با استفاده از کد های قرار داده شده در زیر تصویری تحت عنوان inputImage فراخوانی شده سپس با استفاده از تابع rgb2gray آن را در حالت خاکستری قرار میدهیم
  
  </div>
  

```
img = imread("./inputImage.jpg");
img = rgb2gray(img);
```
<div dir="rtl">
در ادامه با استفاده از تابع padarray ،پدینگی با عرض 10 پیکسل ایجاد کرده و تصویر تغییر یافته را نمایش دادیم.
  

  </div><br/>



```
img_pad = padarray(img,1,'replicate','both');
imshow(img_pad);
```
<div dir="rtl">

<li>
خروجی تصویر
</li>

<img scr="./output.png" />


</div>
