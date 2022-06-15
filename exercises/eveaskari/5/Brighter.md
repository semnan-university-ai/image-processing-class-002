<div dir="rtl">
  
  ### برنامه ای بنویسید که تمام پیکسل های تصویر را 50 درجه روشن تر کند.
### input
 
![pool](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2005/pool.png)
  
  چون در حوزه خاکستری کار میکنیم ابتدا تصویر را به خاکستری تبدیل میکنیم.</br>
  
  <div dir="ltr">
  
  ```
  clc;
close all;
clear;

img1 = imread("MATLAB/pool.png");
img1 = rgb2gray(img1);
img1 = imresize(img1, [300 300]);

figure, imshow(img1);

```

![gray](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2005/gray.JPG)
  </div>
  حال با اضافه کردن 50 به تمام پیکسل ها تصویر را روشن تر میکنیم.
  
  <div dir="ltr">
  
```
  
img_siz = size(img1);

for i = 1: img_siz(1,1)
    for j = 1: img_siz(1,2)
        img1(i,j) = img1(i,j) + 50;
    end
end

figure, imshow(img1);
```
### output
  
![bright](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2005/bright.JPG)
  </div>

  
  </div>
