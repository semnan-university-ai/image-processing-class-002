## Sqrt exercise
#### برنامه ای بنویسید که با فیلتر همسایگی 4 گانه کار کند (بالا، پایین، چپ، راست) و پیکسل مرکزی را از حاصل جذر همسایه ها تغییر مقدار دهد.
##### در ابتدا تصویر میوه را خوانده سپس ماتریس تصویر میوه را بدست اورده و تصویر رنگی را به تصویر خاکستری تبدیل می نماییم.
```
clc; 
close all;
clear;
image1=imread('fruits.png');
image2=rgb2gray(image1);
figure,imshow(image2);
```
##### در این قسمت تصویر میوه و تصویر خاکستری شده آن را نمایش می دهیم.
![gpa](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/benchmark/fruits.png)
![gpa](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc06/fig1.6.png)
##### حال سایز تصویر خاکستری که همان image2 است را یافته و یک تصویر pad با اعضا صفر می سازیم که تعداد سطر و ستون  آن دو واحد از سطرو ستون تصویر خاکستری بیشتر است.سپس مقادیر سطر 2 تا یکی مانده به اخری و ستون 2 تا یکی مانده به اخری را با مقادیر تصویر خاکستری جایگذاری میکنیم. 

```
[m,n]=size(image2);
padimage=zeros(m+2,n+2);
padimage(2:end-1,2:end-1)=image2;
figure, imshow(uint8 (padimage));
```
##### در اینجا تصویر padding شده را میبینیم.
![gpa](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc06/fig2.6.png)
##### حال از سطر 2 تا یکی مانده به اخری و از ستون 2 تا یکی مانده به اخری جذر همسایگی 4 گانه هر پیکسل گرفته شده و جایگزین ان پیکسل می شود. 
```
[mp,np]=size(padimage);
for i=2:mp-1
    for j=2:np-1
        image3(i,j)=sqrt(double(padimage(i-1,j)))+sqrt(double(padimage(i+1,j)))+...
            sqrt(double(padimage(i,j-1)))+sqrt(double(padimage(i,j+1)));
    end
end
```
##### در پایان نمایش تصویر نتیجه را به شکل زیر داریم.
![gpa](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc06/fig3.6.png)

