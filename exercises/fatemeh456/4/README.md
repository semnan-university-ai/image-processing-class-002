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
#### بررسی کد :
جهت اجرای بهتر کدها در متلب، بهتر است سه دستور اول در ابتدای هر برنامه نوشته شود. 
```
clc;
clear;
close all;
```
سپس تصوير اصلی را می خوانیم.
 <br/>
 ![Source image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/4/Cat.jfif)
<br/>
چون تمرکز ما تا به این جا کار بر روی تصاویر خاکستری است آن را از رنگی به خاکستری تبدیل می کنیم :

```
img = imread('Cat.jfif');
gray_img = rgb2gray(img);
```
حال سایز تصویر را در ماتریسی با دو درایه ذخیره می کنیم درایه x تعداد سطرهای تصویر و درایه y تعداد ستون های تصویر است .
<br/>
در ادامه به کمک حلقه for بر روی تصویر حرکت می کنیم .
اما چون هدف نگاتیو کردن تنها نیمه بالایی تصویر است باید تنها نصف سطر ها را پیمایش کنیم به همین دلیل متغیر i تا x/2 جلو می رود .
<br/>
برای نگاتیو کردن تصویر کافیست مقدار هر پیکسل را از 255 کم کنیم
```
[x y] = size(gray_img);
for i = 1 : x/2
    for j = 1 : y
        gray_img(i,j) = 255 - gray_img(i,j) ;   
    end
end
```
در نهایت تصویر مرجع و تصویر نهایی را به نمایش درآورده و نتیجه حاصل را  در قالب یک تصویر با نام MyImage ذخیره می کنیم.

```
subplot(221);imshow(img);title('Source Image');
subplot(222);imshow(gray_img);title("Negative");
imwrite(gray_img,'MyImage.png')
```
در نهايت تصویر حاصل به صورت زیر خواهد بود :
 
 ![Negative Image](https://raw.githubusercontent.com/semnan-university-ai/image-processing-class-002/main/exercises/fatemeh456/4/MyImage.png?token=GHSAT0AAAAAABPAIYAIGFSSMMKEMWR6G6UEYSJ4ZQQ)
