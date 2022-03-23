### Exercise 5
```
clc;
clear;
close all;
src_img = imread('fruit.jfif');
gray_img = rgb2gray(src_img);
figure,imshow(gray_img);title('Before')
[x y] = size(gray_img);
for i = 1 : x
    for j = 1 : y
        gray_img(i,j) = gray_img(i,j) + 50; 
    end
end
figure, imshow(gray_img);title("After")
imwrite(gray_img,'MyImage.png')
```
<div dir="rtl">
#### توضیحات :
<br/>
جهت اجرای بهتر کدها در متلب، بهتر است سه دستور اول در ابتدای هر برنامه نوشته شود.
<br/>
سپس تصویر ورودی را خوانده ، آن را خاكستري كرده و به كمك حلقه for بر روي تصوير حركت كرده و مقدار هر پيكسل را با عدد 50 جمع مي كنيم. 
<br/>
در نهايت تصوير را نمايش داده و در قالب تصويري به نام MyImage ذخيره مي كنيم . 
<br/>
تصوير اوليه و نهايي را در ادامه خواهيم ديد :
</div>
<br/>
![Before](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/5/fruit.jfif)
<br/>
![After](https://raw.githubusercontent.com/semnan-university-ai/image-processing-class-002/main/exercises/fatemeh456/5/MyImage.png?token=GHSAT0AAAAAABPAIYAI7YCRAZKYFKLV24IMYR3BF6Q)
