<div dir="rtl">
 
  ### کدی بنویسید که تصاویر تغییر کنند ssim  بالایی داشته باشیم.
  
  </br>
  در این برنامه سعی شده تغییرات متفاوتی در تصویر ایجاد شود و مقدار ssim آنها محاسبه شود.
  </br>
  به عنوان مثال در ابتدا فکر میکردم اگر یک تصویر نگاتیو شود ممکن است که مقدار شباهت آن زیاد تغییر نکند در حالی که بیشترین تغییر در این مورد است. یا چرخاندن تصویر یا آینه کردن آن چون رسما همان تصویر با همان مقادیر پیکسل ها هستند امکان دارد میانگین و واریانس آنها مانند هم شود حال آنکه کوواریانس آنها باعث کاهش مقدار  ssim می شود.
  </br>
   برنامه و خروجی آن برای هر تغییر نشان داده شده است:
  </br>
  
  <div dir="ltr">
    
  
```
clc;
clear;
close all;

img = rgb2gray(imread('MATLAB/peppers.png'));
[x ,y] = size(img);

for i = 1: x
    for j =1: y
        neg(i,j) = 255 - img(i,j);
    end
end


for i = 1: x
    for j =1: y
        riv(i,j) = img(j,i);
    end
end

%rot = imrotate(img, 180);
mir = flip(img,2);


ssimimg1 = ssim(neg, img);
figure, subplot(2,2,1),imshow(img),title('original image');
subplot(2,2,2),imshow(neg),title(['negative of the image' ,num2str(ssimimg1)]);

ssimimg2 = ssim(riv, img);
subplot(2,2,3),imshow(riv),title(['rivers of the image' ,num2str(ssimimg2)]);

ssimimg3 = ssim(mir, img);
subplot(2,2,4),imshow(mir),title(['mirror of the image' ,num2str(ssimimg3)]);
```
  
  </br>
  
  ![ssim](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Extra/SSIM/ssimresult.JPG)
  
  </div>
  
  </div>
