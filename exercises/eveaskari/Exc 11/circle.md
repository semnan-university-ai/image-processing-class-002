### یک تصویر را از تصاویر benchmark بخوانید و سعی کنید در مرکز تصویر یک دایره ایجاد کنید.

![girl](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2011/girl.png)

```
clc;
close all;
clear;

img = imread("MATLAB/girl.png");
img = rgb2gray(img);
imshow(img);
[m,n] = size(img);

drawcircle('Center',[n,m]/2+0.5,'Radius',length(img)/4);
```
### output

![circle](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2011/circle.JPG)
