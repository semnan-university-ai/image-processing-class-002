### Exercise 4
```
clc;
clear;
close all;
img = imread('Cat.jfif');
gray_img = rgb2gray(img);
[x y] = size(gray_img);
for i = 1 : x/2
    for j = 1 : y
        gray_img(i,j) = 255 - gray_img(i,j) ;   
    end
end
subplot(221);imshow(img);title('Source Image');
subplot(222);imshow(gray_img);title("Negative");
imwrite(gray_img,'MyImage.png')
```
<div dir="rtl">
#### توضیحات :
<br/>
جهت اجرای بهتر کدها در متلب، بهتر است این سه دستور در ابتدای هر برنامه نوشته شود :
</div>
<br/>
```
clc;
clear;
close all;
```
<br/>
<div dir="rtl">
سپس تصویر ورودی را می خوانیم 
<br/>
</div>
![Source image]()
<br/>
<div dir="rtl">
و چون تمرکز ما تا به این جا کار بر روی تصاویر خاکستری است آن را از رنگی به خاکستری تبدیل می کنیم :
</div>
<br/>
```
img = imread('Cat.jfif');
gray_img = rgb2gray(img);
```
<br/>
<div dir="rtl">
حال سایز تصویر را در ماتریسی با دو درایه ذخیره می کنیم درایه x تعداد سطرهای تصویر و درایه y تعداد ستون های تصویر است .
<br/>
در ادامه به کمک حلقه for بر روی تصویر حرکت می کنیم .
<br/>
اما چون هدف نگاتیو کردن تنها نیمه بالایی تصویر است باید تنها نصف سطر ها را پیمایش کنیم به همین دلیل متغیر i تا x/2 جلو می رود .
<br/>
برای نگاتیو کردن تصویر کافیست مقدار هر پیکسل را از 255 کم کنیم : 
</div>
<br/>
```
[x y] = size(gray_img);
for i = 1 : x/2
    for j = 1 : y
        gray_img(i,j) = 255 - gray_img(i,j) ;   
    end
end
```
<br/>
<div dir="rtl">
در نهایت تصویر مرجع و تصویر نهایی را به نمایش درآورده و نتیجه حاصل را  در قالب یک تصویر با نام MyImage ذخیره می کنیم :
</div>
<br/>
<br/>
```
subplot(221);imshow(img);title('Source Image');
subplot(222);imshow(gray_img);title("Negative");
imwrite(gray_img,'MyImage.png')
```
<br/>
![Negative Image]()
<br/>
<div dir="rtl">
#### نتیجه نهایی
</div>
![Result]()
<br/>
<div dir="rtl">
اگر همين روند را بر روي تصوير رنگي  مان اعمال مي كرديم نتيجه نهايي ما به شكل زير در مي آمد :
</div>
<br/>
![Negative Image RGB]()