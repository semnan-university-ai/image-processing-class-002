<div dir="rtl">
  
 
### برنامه ای بنویسید که نیمه ی بالایی یک تصویر را نگاتیو کند.
  
  برای نگاتیو کردن یک تصویر کافی است مقادسر هر پیکسل آن را از 255 کم کنیم. </br>
  </br>
  ### input
  
  ![input](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2002/fruits.png)
  </br>
  چون در حوزه خاکستری هستیم عکس رنگی را به خاکستری تبدیل میکنیم:
  </br>
  ![gray](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2002/gray.JPG)
  </br>
  برای اینکه نصف تصویر را نگاتیو کنیم در قسمت img_siz باید یک تقسیم بر دو قرار دهیم .حال اگر بخواهیم تصویر به دو قسمت افقی نصف شود i  را نصف میکنیم که تعداد سطر هاست ، و اگر بخواهیم عمودی نصف  کنیم باید j  را تقسیم بر دو کنیم به صورت زیر:

<div dir="ltr">
  
```
clc;
close all;
clear;


img1 = imread("MATLAB/fruits.png");
img1 = rgb2gray(img1);
img1 = imresize(img1, [300 300]);

figure, imshow(img1);
%figure, imshow(img2);

img_siz = size(img1);

for i = 1: img_siz(1,1)/2
    for j = 1: img_siz(1,2)
        img1(i,j) = 255 - img1(i,j);
    end
end

figure, imshow(img1);
```
</div>
  
  </br>
  
  ### output
  
  ![hneg](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2002/Hneg.JPG)
  
-----------------

<div dir="ltr">
  

```

clc;
close all;
clear;


img1 = imread("MATLAB/fruits.png");
img1 = rgb2gray(img1);
img1 = imresize(img1, [300 300]);

figure, imshow(img1);
%figure, imshow(img2);

img_siz = size(img1);

for i = 1: img_siz(1,1)
    for j = 1: img_siz(1,2)/2
        img1(i,j) = 255 - img1(i,j);
    end
end

figure, imshow(img1);

```
</div>

  </br>
  
  ### output
  
  ![vneg](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2002/Vneg.JPG)
  

  </br>و اگر بخواهیم هر دو فیلتر را اعمال کنیم تصویر به صورت شطرنجی نگاتیو می شود.
  

<div dir="ltr">
  
```

  clc;
close all;
clear;


img1 = imread("MATLAB/fruits.png");
img1 = rgb2gray(img1);
img1 = imresize(img1, [300 300]);

figure, imshow(img1);
%figure, imshow(img2);

img_siz = size(img1);

for i = 1: img_siz(1,1)/2
    for j = 1: img_siz(1,2)
        img1(i,j) = 255 - img1(i,j);
    end
end

figure, imshow(img1);

for i = 1: img_siz(1,1)
    for j = 1: img_siz(1,2)/2
        img1(i,j) = 255 - img1(i,j);
    end
end

figure, imshow(img1);
  
```
  </br>
  
  ### output
  
  ![2neg](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2002/2neg.JPG)
  </div>
  
  </div>
