<div dir="rtl">
  
### فیلتر میانه را با یک پنجره ی 7 در 7 روی تصاویر سفره هفت سین خود پیاده سازی کنید. (ابتدا تصویر خاکستری شود.)

  </br>
  </br>
  برای اینکار می توان از توابع آماده متلب استفاده نمود یا تابع میانه را بصورت جدا تعریف و تولید کرد که برای این کار روش های متفاوتی وجود دارد.
  </br>
  از آنجایی که تابع  خاصی مد نظر نیست ما از تابع آماده متلب استفاده میکنیم.
  </br>
  برای جلوگیری از تکرار میتوان کل عملیات را دورن یک تابع جدید نوشت:
  </br>
  
  <div dir="ltr">
  
  ```
 function med = newmed7(img)
    img = rgb2gray(imread(img));
    med = medfilt2(img, [7 7], 'symmetric');
    figure, imshowpair(img,med, 'montage');
 end
  ```
  
  </div>
  
حال میتوان تابع را برای تصاویر مورد نظر فراخوانی کرد:

 <div dir="ltr">
  
  ```
clc;
close all;
clear;

newmed7("data 7 sin/08.jpeg");
newmed7("data 7 sin/09.jpeg");
newmed7("data 7 sin/10.jpeg");
newmed7("data 7 sin/12.jpeg");
newmed7("data 7 sin/14.jpeg");
newmed7("data 7 sin/15.jpeg");
newmed7("data 7 sin/16.jpeg");
newmed7("data 7 sin/19.jpeg");
newmed7("data 7 sin/20.jpeg");
newmed7("data 7 sin/21.jpeg");
newmed7("data 7 sin/22.jpeg");
newmed7("data 7 sin/23.jpeg");
  ```
 
  
### output
  
  ![med08](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/median/med08.JPG)
  
  ![med09](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/median/med09.JPG)
  ![med10](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/median/med10.JPG)
  ![med12](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/median/med12.JPG)
  ![med14](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/median/med14.JPG)
  ![med15](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/median/med15.JPG)
  ![med16](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/median/med16.JPG)
  ![med19](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/median/med19.JPG)
  ![med20](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/median/med20.JPG)
  ![med21](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/median/med21.JPG)
  ![med22](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/median/med22.JPG)
  ![med23](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/median/med23.JPG)

  
  </div>
 
 
  </div>
