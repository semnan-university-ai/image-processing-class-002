<div dir="rtl">
  
 ## برنامه ای بنویسید که به صورت رندوم یک مربع سفید 50 در 50 پیکسل را در هر اجرا روی تصویر ایجاد کند. 
  </br>
  
 ### تصویر ورودی
 
   ![baboon](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin3/imaget2.jpg)
  
  </br>
  
  تبدیل عکس به خاکستری برای انجام کار های مد نظر و همین طور سایز تصویر رو کوچک می کنیم:
  
   <div dir="ltr">
  
```
clc;
close all;
clear;

img = imread('/Users/s.ali.motavally/Desktop/tamrin3/imaget2.jpg');
img =rgb2gray(img);
img = imresize(img, [450 550]);
figure,imshow(img);
```

</div>

در ادامه سایز تصویر به صورت طول و عرض دریافت شده و با استفاده از تابع randi مربعی 50 در 50 به صورت تصادفی در موقعیتی از تصویر ایجاد گردیده است

   <div dir="ltr">
  
```
[i,j]=size(img);
while true
    widsqre= randi(i);
    lesqre=randi(j-1);
    if ((widsqre+50<i) && (lesqre+50<j))
        break;
    end
    
end
img(widsqre:widsqre+50,lesqre:lesqre+50)=255;
imshow(img);
```

</div>

### تصویر خروجی

 ![baboon](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin3/squreim.jpg)
