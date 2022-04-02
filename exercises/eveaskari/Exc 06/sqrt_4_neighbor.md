### برنامه ای بنویسید که با فیلتر همسایگی 4 گانه کار کند (بالا، پایین، چپ، راست) و پیکسل مرکزی را از حاصل جذر همسایه ها تغییر مقدار دهد.
### input

![cat](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2006/cat.png)
ابتدا تصویر ورودی را به خاکستری تبدیل می نماییم :
</br>

```
clc;
close all;
clear;

img0 = imread("MATLAB/cat.png");
img0 = rgb2gray(img0);
figure, imshow(img0);
```

![gray](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2006/gray.JPG)

<div dir="rtl">
اگر تابع sqrt را به صورت عادی اعمال کنیم با خطای عدم پشتیبانی فرمت مواجه می شویم در نتیجه ابتدا عکس را به فرمت double  می بریم سپس برای نمایش نهایی آن را دوباره به uint8 تبدیل می کنیم:

  </div>
  
```
img_siz = size(img0);
sw = img_siz(1,1) ;
sh = img_siz(1,2);

img1 = zeros(sw, sh);
img1 = double(img0);
figure, imshow(uint8(img1));


for i = 2: sw-1
    for j = 2: sh-1
        
       img1(i,j) =  sqrt(double(img0(i+1,j))) + sqrt(double(img0(i,j-1))) + sqrt(double(img0(i,j+1))) + sqrt(double(img0(i-1,j)));
             
    end
end

figure, imshow(uint8(img1));
```

### output

![s4n](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2006/s4n.JPG)
