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
#### بررسی کد :
جهت اجرای بهتر کدها در متلب، بهتر است سه دستور اول در ابتدای هر برنامه نوشته شود. 
سپس تصوير را خوانده و آن را خاكستري مي كنيم.
```
clc;
clear;
close all;
src_img = imread('fruit.jfif');
gray_img = rgb2gray(src_img);
```
به كمك حلقه for ابعاد تصویر را در قالب آرایه ای ذخیره سپس بر روي تصوير حركت كرده و مقدار هر پيكسل را با عدد 50 جمع مي كنيم.
```
[x y] = size(gray_img);
for i = 1 : x
    for j = 1 : y
        gray_img(i,j) = gray_img(i,j) + 50; 
    end
end
```
در نهايت تصوير را نمايش داده و در قالب تصويري به نام MyImage ذخيره مي كنيم . 
تصوير اوليه و نهايي را در ادامه خواهيم ديد :
 
![Before]()
![After]()