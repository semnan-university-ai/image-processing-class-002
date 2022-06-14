<div dir="rtl">

### کدی بنویسید که دو تصویر را گرفته و 200x200 پیکسل اول تصویر اول را از 200x200 آخرین تصویر دوم کم کنید.
برای این کار ابتدا دو تصویر را میخوانیم و آنها را به حوزه خاکستری می بریم.
  </br>
  سپس برای بدست آوردن 200 پیکسل انتهایی تصویر دوم مقادیر سایز تصاویر را در متغیر هایی ذخیره می کنیم و برای تصویر دوم 200 واحد(199) از انتهای هر جهت کم می کنیم تا نقطه شروع  200*200  را بیابیم.
  </br>
  تصاویر برای اینکه بتوان روی آنها عملیات انجام داد باید به صورت double باشند. بعد از تبدیل آنها میتوان تصاویر را از هم کم کرد.
  </br>
  این کار را با توابع آماده متلب هم میتوان انجام داد:
  </br>
  
<div dir="ltr"> 
  
```
clc;
close all;
clear;

img2 = rgb2gray(imread('MATLAB/lena.png'));
img1 = rgb2gray(imread('MATLAB/fruits.png'));
figure, subplot(1,2,1); imshow(img1);
subplot(1,2,2); imshow(img2);

[x ,y] = size(img1);
[w ,z] = size(img2);
g = w-199;
f = z-199;

img1 = img1(1:200 , 1:200 , :);
img2 = img2(g:w , f:z , :);

img1 = double(img1);
img2 = double(img2);
subtr = img1 - img2;
%subtr = imsubtract(img1,img2);
figure, imshow(uint8(subtr)), title('subtraction of tow images');
```
  
  </br>
  
  ![input](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Extra/subtract/inputs.JPG)
  
  ![sub](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Extra/subtract/subtract.JPG)
  
  </br>
  
  </div>
  
  </div>
