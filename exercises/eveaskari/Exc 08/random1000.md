### یک تصویر 1000 در 1000 ایجاد کنید که مقدار هر پیکسل آن یک عدد تصادفی باشد.
#### از دو روش برای این کار میتوان استفاده کرد:

```
clc;
close all;
clear;

img = zeros(1000, 1000);
img(1:1000, 1:1000) = rand(1000, 1000);
imshow(img);
```
-------------------

```
clc;
close all;
clear;

img1 = randi(255,1000,1000);
img0 = uint8(img1);
imshow(img0, []);
```

### output

![random1000]()

### a part of matrix

![matrix]()
