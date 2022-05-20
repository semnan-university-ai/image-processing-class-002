<div dir="rtl">
  
 ### تابعی برای crop کردن تصویر بدون توابع آماده ی متلب بنویسید. 
  
  </br></br>
  
<div dir="rtl">
دستورات clc  ، clear و close all در ابتدای کد برای پاک کردن صفحه Command Window، حذف متغیرها و بستن پنجره ها نوشته میشود.
 </div> <br/>
 
   <div dir="ltr">

 
 ```
clc;
clear;
close all;
```

  </div>
  
  </br>
  
<div dir="rtl">

تابع، تصویر ورودی و مختصات ابتدا و انتهای سطر و ستون های تصویر برای برش را تعریف میکنیم.
سپس تصویر اصلی و تصویر برش خورده را به نمایش میدهیم.
  </br>
  
  <div dir="ltr">
  
  ```
function ImageCrop = ImgCrp_func(img,RS,RE,CS,CE)
%RS:RowStart , RE:RowEnd , CS:ColumnStart , CE:ColumnEnd
ImageCrop = img(RS:RE, CS:CE, :);

figure;
subplot(1,2,1), imshow(img), title('Original Image');
subplot(1,2,2), imshow(ImageCrop), title('Cropped Image');

end
  ```
  
  </br>
  
  </div>
  که در اینجا تصویر میوه ها را از پیکسل 35 تا 140 سطر و 40 تا 200 ستون برش میدهد.
  </br>
  </br>
  
  
  <div dir="ltr">
  
  ```
img = imread("Fruits.jpg");
ImgCrp_func(img,35,140,40,200)
  ```
  
  </br>
  
  </div>
  
و این هم خروجی کد:
  </br>

  
  
  
  </div>
