## Brighten the image
#### برنامه ای بنویسید که تمام پیکسل های تصویر را 50 درجه روشن تر کند. 
##### ابتدا خواندن ماتریس تصویر  و خاکستری کردن آن را انجام می دهیم. سپس تصویر خاکستری را نمایش می دهیم.
```
clc;
close all;
clear;
image1=imread('peppers.png');
image2=rgb2gray(image1);
figure,imshow(image2);
```
![bri](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/benchmark/peppers.png)
![bri](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc05/fig1.5.png)
##### در این قسمت سایز تصویر خاکستری را یافته و به هر پیکسل تصویر 50 تا اضافه می کنیم که باعث روشن تر شدن تصویر می گردد.
```
[m,n]=size(image2);
for i= 1:m
    for j=1:n
        image3(i,j)=image2(i,j)+50;
    end
end
```
##### و حال نمایش تصویر نتیجه را داریم.
```
figure,imshow(image3);
```
![bri](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc05/fig2.5.png)
