<div dir="rtl">
<h3>تابعی برای crop کردن تصویر بدون توابع آماده ی متلب بنویسید.</h3><br/>
</div>
<div dir="rtl">
 در ابتدا دستورات مربوط به یستن پنجره ها ، پاک کردن صفحه و حذف متغیر ها نوشته شده و تصویر ورودی فراخوانی شده است . 
 </div> <br/>
 
 ```
 clear;
close all;
clc;
img = imread('Image1.png');
```

<div dir="rtl">
 در ادامه در همبن فایل یک خط کد قرار داده شده که به دلیل وجود فایل و تابع با همین نام ، تابع را در فایلی دیگر نوشته و این کار سبب فراخوانی تابع میشود و آرگومان های تابع که شامل مقدار برش تصویر است در مقابل تابع قرار داده شده است .
 </div><br/>
 
 ```
 crop_image(img,60,65,100,250);
```
<div dir="rtl">
 در ادامه تابع مربوط به برش تصویر قرار داده شده است که تصویر و اندازه های تصویر به عنوان ورودی دریافت شده و عملیات crop بر روی تصویر پیاده سازی شده است و در نهایت تصویر اصلی  و خروجی که تصویری برش خورده است نمایش داده شده.
</div><br/>
 
 
 
 
 ```
 function crop_img = crop_image(img,startRow,startCol,endRow,endCol)
  
crop = img(startRow:endRow ,startCol:endCol , : );
figure(1), imshow(img) , title('original Image');
figure(2), imshow(crop) , title('Crop Image');

end
 ```
  <h4>تصویر ورودی</h4>
   <div align="center">
 <img src="Image1.png">
 </div>
  
  <h4>تصویر خروجی</h4>
 <div align="center">
 <img src="output.jpg">
 </div>
  


