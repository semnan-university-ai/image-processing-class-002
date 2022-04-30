# task12

```
clc;
clear all;
close all;

```
در خط اول ابتدا با دستور clc محیط command window پاک شده و با دستور clear all محیط work space پاک می شود. در نهایت در خط سوم با دستور close all تمامی پنجره های درون متلب مانند figureها بسته می شود.

```

1)img1=imread("WhatsApp Image 2022-03-31 at 1.11.38 AM.jpeg");
2)img1=rgb2gray(img1);
3)subplot(11,4,1)
4)imshow(img1)
5)subplot(11,4,2)
6)imhist(img1)
7)subplot(11,4,3);
8)s1=histeq(img1);
9)imshow(s1)
10)subplot(11,4,4);
11)imhist(s1)

```

در خط شماره یک توسط دستور imread اولین تصویر دریافت شده و سپس در خط 2 این تصویر رنگی به یک تصویر خاکستری تبدیل می شود. سپس برای اینکه تمامی تصاویر را کنار هم داشته باشیم از دستور subplot استفاده کرده. در خط 4 تصویر اولیه با دستور imshow نشان داده می شود. سپس در خط 6 با دستور imhist هیستوگرام تصویر اولیه حاصل می شود. در خط 8 با استفاده از دستور histeq به افزایش کنتراست تصویر می پردازد و بهینه سازی تصویر را انجام میدهد. در نهایت در خط 9 تصویر جدید با دستور Imshow نشان داده می شود و در خط 11 با دستور imhist هیستوگرام تصویر جدید رسم می شود.
 
 ---------------
 حال در ادامه برای بقیه تصاویر سفره هفت سین همین کد ها صورت می گیرد که در ادامه قرار می گیرد:

``` 
 img2=imread("WhatsApp Image 2022-03-31 at 1.11.39 AM (2).jpeg");
img2=rgb2gray(img2);
subplot(11,4,5)
imshow(img2)
subplot(11,4,6)
imhist(img2)
subplot(11,4,7);
s2=histeq(img2);
imshow(s2)
subplot(11,4,8);
imhist(s2)
img3=imread("WhatsApp Image 2022-03-31 at 1.11.39 AM.jpeg");
img3=rgb2gray(img3);
subplot(11,4,9)
imshow(img3)
subplot(11,4,10)
imhist(img3)
subplot(11,4,11);
s3=histeq(img3);
imshow(s3)
subplot(11,4,12);
imhist(s3)
img4=imread("WhatsApp Image 2022-03-31 at 1.11.40 AM (1).jpeg");
img4=rgb2gray(img4);
subplot(11,4,13)
imshow(img4)
subplot(11,4,14)
imhist(img4)
subplot(11,4,15);
s4=histeq(img4);
imshow(s4)
subplot(11,4,16);
imhist(s4)
img5=imread("WhatsApp Image 2022-03-31 at 1.11.40 AM.jpeg");
img5=rgb2gray(img5);
subplot(11,4,17)
imshow(img5)
subplot(11,4,18)
imhist(img5)
subplot(11,4,19);
s5=histeq(img5);
imshow(s5)
subplot(11,4,20);
imhist(s5)
img6=imread("WhatsApp Image 2022-03-31 at 1.11.41 AM (1).jpeg");
img6=rgb2gray(img6);
subplot(11,4,21)
imshow(img6)
subplot(11,4,22)
imhist(img6)
subplot(11,4,23);
s6=histeq(img6);
imshow(s6)
subplot(11,4,24);
imhist(s6)
img7=imread("WhatsApp Image 2022-03-31 at 1.11.41 AM (2).jpeg");
img7=rgb2gray(img7);
subplot(11,4,25)
imshow(img7)
subplot(11,4,26)
imhist(img7)
subplot(11,4,27);
s7=histeq(img7);
imshow(s7)
subplot(11,4,28);
imhist(s7)
img8=imread("WhatsApp Image 2022-03-31 at 1.11.41 AM.jpeg");
img8=rgb2gray(img8);
subplot(11,4,29)
imshow(img8)
subplot(11,4,30)
imhist(img8)
subplot(11,4,31);
s8=histeq(img8);
imshow(s8)
subplot(11,4,32);
imhist(s8)
img9=imread("WhatsApp Image 2022-03-31 at 1.11.42 AM (1).jpeg");
img9=rgb2gray(img9);
subplot(11,4,33)
imshow(img9)
subplot(11,4,34)
imhist(img9)
subplot(11,4,35);
s9=histeq(img9);
imshow(s9)
subplot(11,4,36);
imhist(s9)
img10=imread("WhatsApp Image 2022-03-31 at 1.11.42 AM.jpeg");
img10=rgb2gray(img10);
subplot(11,4,37)
imshow(img10)
subplot(11,4,38)
imhist(img10)
subplot(11,4,39);
s10=histeq(img10);
imshow(s10)
subplot(11,4,40);
imhist(s10)
img11=imread("photo_2022-04-03_09-03-53.jpg");
img11=rgb2gray(img11);
subplot(11,4,41)
imshow(img11)
subplot(11,4,42)
imhist(img11)
subplot(11,4,43);
s11=histeq(img11);
imshow(s11)
subplot(11,4,44);
imhist(s11)
```
حال در ادامه خروجی به صورت زیر قرار می گیرد:

![image](https://user-images.githubusercontent.com/95109502/166118420-8506cc82-78c7-476e-9872-2632518efdce.png)
