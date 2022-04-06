
**توضیحات**
<br>
ابتداتصویر اصلی را می خوانیم و سپس آن را با استفاده از دستور زیر به یک تصوسر خاکستری تبدیل می نماییم :
```
img = imread('cat.png');
img_gray = rgb2gray(img);
imshow(img_gray);
title('asli')
```
سپس با استفاده از دستور زیر سایز تصویر را به صورت یک ماتریس ذخیره می نماییم:
```
[m n] = size(img_gray);
```
در مرحله بعدی در یک حلقخ for  50 درجه پیکسل هارا روشن می نماییم:
```
for i = 1 : m
    for j = 1 : n
        img_gray(i,j) = img_gray(i,j) + 50; 
    end
end
```
و در مرحله آخر تصویر اصلی و  تصویر روشن شده را با استفاده از دستور subplot نمایش مس دهیم :
```
subplot (1,2,1)
imshow(img_gray)
title (' asli ')
subplot (1,2,2)
imshow(img_gray)
title (' brighten ')
```
خروجی به صورت زیر می باشد:
![Uploading bandicam 2022-04-06 02-41-55-177.jpg…]()<br>
