<div dir="rtl">
 

### با فرمول حالت سوم تصویر رنگی را به تصویر خاکستری تبدیل کنید.
  </br>
  به غیر از توابع موجود در متلب می توان از روش های دیگری هم برای خاکستری کردن عکس رنگی استفاده کرد.
  در اینجا ما سه روش را نشان میدهیم. (در این سوال مورد سوم مد نظر است.)
  </br>
  در روش اول میتوان مقادیر هر سه رنگ را گرفته و تقسیم بر سه کرده تا تبدیل انجام شود. در این روش تصویر بیشتر سیاه و سفید است.
  </br>
  
  <div dir="ltr">
 
 ```
 clc;
close all;
clear;

img1 = imread('MATLAB/frymire.png');
imgsiz = size(img1);
x = imgsiz(1,1);
y = imgsiz(1,2);

new1 = zeros(x, y);
new2 = zeros(x, y);
new3 = zeros(x, y);
%first
for i=1:x
    for j=1:y
        new1(i,j) = (img1(i,j,1) + img1(i,j,2) + img1(i,j,3))/3 ;
    end
end
figure, imshowpair(img1, new1, 'montage');
 ```
 
  </br>
  
  ![g1](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2015/g1.JPG)
  
  </div>
  در روش دوم مقدار هر رنگ را تقسیم بر سه میکنیم سپس با هم جمع می کنیم. این روش به مانند خاکستری کردن معمولی است.
  </br>
  
  <div dir="ltr">
  
  </br>
  
  ```
  %second
for i=1:x
    for j=1:y
        new2(i,j) = (img1(i,j,1)/3) + (img1(i,j,2)/3) + (img1(i,j,3)/3 );
    end
end
figure, imshowpair(img1, new2, 'montage');
  ```
  
  </br>
  
  ![g2](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2015/g2.JPG)
  
  </div>
   در روش سوم (مد نظر) مقدار هر رنگ را در ضرایب خاصی ضرب کرده و حاصل را باهم جمع می کنیم.
  
  <div dir="ltr">
  
  </br>
  
  ```
  %third
for i=1:x
    for j=1:y
        new3(i,j) = (img1(i,j,1)*0.299 + img1(i,j,2)*0.577 + img1(i,j,3)*0.144);
    end
end
figure, imshowpair(img1, new3, 'montage');
  ```
  
  ![g3](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2015/g3.JPG)
    
  </br>
    
  </div>
  </div>
