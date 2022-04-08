<div dir="rtl">
<h3>برنامه ای بنویسید که به صورت رندوم یک مربع سفید 50 در 50 پیکسل را در هر اجرا روی تصویر ایجاد کند.</h3><br/>
  </div>
  <div dir="rtl">

  
 در کد زیر ابتدا تصویر وروودی فراخوانی شده و تبدیل به حالت خاکستری شده است .
  </div>

  ```
  clc;
clear all;
close all;

img = imread('./inputImage.jpg');
img =rgb2gray(img);
figure,imshow(img);
```
<div dir="rtl">
  خروجی برنامه فوق : 
  
 <br/>
  <p align="center">
<img src="./inputImage.jpg" style="width:700px">
</p><br/>
  در ادامه سایز تصویر به صورت طول و عرض دریافت شده و با استفاده از تابع randi مربعی 50 در 50 به صورت تصادفی در موقعیتی از تصویر ایجاد گردیده است
</div><br/>
  
```

[i,j]=size(img);
while true
    k= randi(i);
    l=randi(j-1);
    if ((k+50<i) & (l+50<j))
        break;
    end
    
end
```
<div dir="rtl">
  در ادامه محدوده ی قرار گیری مربع به صورت رندوم مشخص و تصویر نمایش داده شده است.
</div><br/>

```
img(k:k+50,l:l+50)=255;
imshow(img);
  ```
<div dir="rtl">

<li>
 تصویر خروجی :  
</li><br/>
<p align="center">
<img src="./output.png">
</p>


  

</div>
