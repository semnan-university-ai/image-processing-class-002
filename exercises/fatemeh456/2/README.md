### Exercise 2
```
clc;
clear;
close all;
src_img = imread('fruit.png');
src_img = rgb2gray(src_img);
[x y] = size(src_img);
win_Size = [3,3];
pad_size = floor(3/2);
for i = 1 : x
    for j = 1 : y
        pad_img = padarray(src_img,[pad_size pad_size],'replicate','both');     
    end
end
subplot(221);imshow(src_img);title('Source Image');
subplot(222);imshow(pad_img);title("After Padding");
imwrite(pad_img,'myImage.png')
```
<div dir="rtl">
#### توضیحات :
<br/>
جهت اجرای بهتر کدها در متلب، بهتر است سه دستور اول در ابتدای هر برنامه نوشته شود . 
<br/>
سپس تصوير را خوانده و آن را خاكستري مي كنيم .
<br/>
حالا ابعاد تصویر را در آرایه ای نگه داشته تا بر روی تصویر حرکت کنیم و padding را ایجاد کنیم .
<br/>
برای این کار لازم است سایز پنجره همسایگی خود را مشخص کنیم که ما آن را 3 در 3 در نظر گرفته ایم .
<br/>
در کنار سایز پنجره همسایگی، مشخص می کنیم که سایز pad ما چقدر باشد یعنی چند پیکسل در اطراف تصویر ما padding  شود .
<br/>
سپس با تعریف حلقه for بر روی تصویر خود حرکت کرده و تابع padarray را فراخوانی می کنیم.
<br/>
به کمک این تابع و دادن تصویر ورودی، سایز padding، مقداری که باید در آن قرار گیرد و جایگاه آن به عنوان ورودی این تابع عملیات با موفقیت انجام خواهد شد.
<br/>
به عبارت بهتر replicate مشخص می کند که مقادیر پیکسل های کناری آن ها باید در pad ایجاد شده قرار گیرد
و 
both مشخص می کند که در هر دو طرف تصویر هم بصورت افقی و هم عمودی این pad ایجاد شود.
<br/>
در ادامه تصویر اصلی و تصویر حاصل را نمایش داده و تصویر pad شده را در قالب MyImage ذخیره کرده ایم .
<br/>
در نهايت خواهیم داشت:
<br/>
    </div>
    <div dir="ltr">
 ![Result](https://raw.githubusercontent.com/semnan-university-ai/image-processing-class-002/main/exercises/fatemeh456/2/Result.PNG?token=GHSAT0AAAAAABPAIYAIWPCN5Y33WWVIXEXAYSG5BGA)
</div>

