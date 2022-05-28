##### ابتدا با کدهای زیر تصویر را خوانده و سایز تصویر را می یابیم.
```
clc;
clear;
close all;
image = imread('pool.png');
[m,n,k] = size(image);
```
###### حال یک ماتریس بنام image1 می سازیم با درایه های صفر به سایزی که قرار است تصویر برش داده شود.
```
image1= zeros (60,150,3);
```
###### حال نقطه ای که قرار است تصویر از انجا برش زده شود و اندازه طول و عرض crop تصویر داده می شود.
```
randx=input('what is xpoint');
randy=input('what is ypoint');
randx1=60;     %input('what is length crop') ;
randy1=150;    %input('what is width crop') ;
```
###### حال ماتریس تصویر اصلی در ماتریس image1 در بازه مشخص ریخته میشود.
```
image1(1:randx1,1:randy1,1:3)=image(randx:randx+randx1-1,randy:randy+randy1-1,1:3);
```
#####  در پایان نمایش تصویر اصلی و تصویر crop  شده را داریم.
```
figure;
subplot(1,2,1),imshow(uint8(image));title('orginal image');   
subplot(1,2,2),imshow(uint8(image1)); title('crop image');
```
![crop](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/17/crop%20image.jpg)
