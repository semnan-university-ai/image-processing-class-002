## برنامه ای بنویسید که با فیلتر همسایگی 4 گانه کار کند (بالا، پایین، چپ، راست) و پیکسل مرکزی را از حاصل جذر همسایه ها تغییر مقدار دهد.

### تصویر ورودی:

![input](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin6/imaget2.jpg)

در این مرحله تصویر را به خاکستری تبدیل می کنیم و اندازه اون رو کم میکنیم:

```

clc;
clear;
close all;

img = imread('/Users/s.ali.motavally/Desktop/tamrin6/imaget2.jpg');
img = rgb2gray(img) ;
img = imresize(img, [450 550]);
figure, imshow(uint8(img));
```

![gray](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin6/img.jpg)

در ادامه با کمک حلثه for قرار داده شده تصویر را پیمایش میکنیم و پیکسل های چپ ، راست، بالا و پایین را دریافت کرده تا به همسایه های موجود دسترسی داشته باشیم و برای هر 4 پیکسل نام برده در فوق عملیات کجذر را انجام داده ودر نهایت تصویر را در خروجی نمایش میدهیم:

```

[x,y]=size(img);
sqr_img = double(img);
for i = 2: x-1
    for j = 2: y-1
       sqr_img(i,j)= sqrt(sqr_img(i+1,j))+sqrt(sqr_img(i-1,j))+sqrt(sqr_img(i,j-1))+sqrt(sqr_img(i,j+1));     
    end
end
figure, imshow(uint8(sqr_img));
```

### خروجی:
![sqr](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin6/img_sqr.jpg)
```
