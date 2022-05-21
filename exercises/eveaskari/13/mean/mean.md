<div dir="rtl">

### فیلتر میانگین را با یک پنجره ی 7 در 7 روی تصاویر سفره هفت سین خود پیاده سازی کنید. (ابتدا تصویر خاکستری شود.)


  </br>
  </br>
  برای اینکار می توان از توابع آماده متلب استفاده نمود یا تابع میانگین را بصورت جدا تعریف و تولید کرد که برای این کار روش های متفاوتی وجود دارد.
  </br>
  از آنجایی که تابع  خاصی مد نظر نیست ما از تابع جدیدی تولید می نماییم استفاده میکنیم:
  </br>
  
  <div dir="ltr">
  
  ```
function new = mean(img)
    filter_size = 7;
    pading = (filter_size - 1)/2;
    img = rgb2gray(imread(img));
    res_img = img;
    [x y]=size(img);
    for i=1+pading:x-pading
        for j=1+pading:y-pading
            new = img(i-pading:i+pading, j-pading:j+pading);
            new = sum(new(:));
            res_img(i,j)= ceil(new/49);
        end
    end
    figure, imshowpair(res_img,img, 'montage');
end
  ```
  
  </div>
  
حال میتوان تابع را برای تصاویر مورد نظر فراخوانی کرد:

 <div dir="ltr">
  
  ```
clc;
close all;
clear;

mean("data 7 sin/08.jpeg");
mean("data 7 sin/09.jpeg");
mean("data 7 sin/10.jpeg");
mean("data 7 sin/12.jpeg");
mean("data 7 sin/14.jpeg");
mean("data 7 sin/15.jpeg");
mean("data 7 sin/16.jpeg");
mean("data 7 sin/19.jpeg");
mean("data 7 sin/20.jpeg");
mean("data 7 sin/21.jpeg");
mean("data 7 sin/22.jpeg");
mean("data 7 sin/23.jpeg");
  ```
 
  
### output
  
![m08](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/mean/m08.JPG)
  
![m09](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/mean/m09.JPG)
  
![m10](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/mean/m10.JPG)
  
![m12](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/mean/m12.JPG)
  
![m14](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/mean/m14.JPG)
  
![m15](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/mean/m15.JPG)
![m16](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/mean/m16.JPG)
![m19](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/mean/m19.JPG)
  
![m20](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/mean/m20.JPG)
  
![m21](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/mean/m21.JPG)
  
![m22](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/mean/m22.JPG)
  
![m23](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2013/mean/m23.JPG)
