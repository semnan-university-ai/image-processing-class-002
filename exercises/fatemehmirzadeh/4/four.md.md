
**توضیحات **
<br>
برای نگاتیو کردن تصویر ابتدا تصویر اصلی  را حوانده و به تصویر خاکستری تبدیل می نماییم :


```
clc ;clear; close all 
img = imread('cat.png');
img =rgb2gray(img);

```
سپس سایز تصویر را در متغیری به نام سایز قرار می دهیم.سپس در حلقه ای سطر ها را از یک تا نصف تصویر و ستون را از نصف تا بالای تصویر نگاتیو می نماید
```
for i=1:m/2
    for j=1:n
        img_size(i,j)=255-img(i,j);
    end 
end 
imshow(img_size)
```
خروجی


<br>
![bandicam 2022-04-06 01-00-46-212](https://user-images.githubusercontent.com/94124607/161928025-2ae35131-1f44-4887-aaf5-71e07502bd66.jpg)<br>



