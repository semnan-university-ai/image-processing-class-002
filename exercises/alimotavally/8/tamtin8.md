## یک تصویر 1000 در 1000 ایجاد کنید که مقدار هر پیکسل آن یک عدد تصادفی باشد.

برای این سوال ما به کمک دو حلقه for و تابع random یک تصویر رندوم ساختیم:

```
clc;
clear;
close all;
for i = 1:1000
    for j = 1:1000
        img_rand(i,j) = randi(255);
    end
end
im = mat2gray(img_rand);
figure,imshow(im);
```

### خروجی:

![random](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin8/randim.jpg)
