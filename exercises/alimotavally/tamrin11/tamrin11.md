## یک تصویر را از تصاویر benchmark بخوانید و سعی کنید در مرکز تصویر یک دایره ایجاد کنید.

### تصویر ورودی:

![lena](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin11/lena.png)

```
clc;
close all;
clear;

img = imread('/Users/s.ali.motavally/Desktop/tamrin11/lena.png');
img = rgb2gray(img);
imshow(img);
[a,b] = size(img);

drawcircle('Center',[a,b]/2+0.5,'Radius',a/4);
```

### خروجی:

![end](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin11/bench.jpg)
