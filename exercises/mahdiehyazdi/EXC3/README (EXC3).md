<div dir="rtl">
<h3>برنامه ای بنویسید که به صورت رندوم یک مربع سفید 50 در 50 پیکسل را در هر اجرا روی تصویر ایجاد کند.</h3><br/>
  </div>

  ```
  clc;
clear all;
close all;

img = imread('./inputImage.jpg');
img =rgb2gray(img);
figure,imshow(img);

[i,j]=size(img);
while true
    k= randi(i);
    l=randi(j-1);
    if ((k+50<i) & (l+50<j))
        break;
    end
    
end
img(k:k+50,l:l+50)=255;
imshow(img);
  ```
<div dir="rtl">

<li>
خروجی تصویر
</li><br/>
<p align="center">
<img src="./output.png">
</p>



</div>
