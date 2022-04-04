### Exercise 3
```
clc;
clear;
close all;
img = imread('spring.png') ;
img = rgb2gray(img) ;
L = 50 ;   % length
B = 50 ;   % breadth 
R = [0 0 ; L 0 ; L B ; 0 B] ; % random Square at locations 
N = 1 ;   % number of Squares
idx = randsample(1:numel(img),N) ; 
[idx,idy] = ind2sub(size(img),idx) ;
% draw coordinates
imshow(img)
hold on;
for i=1:N
    patch(idx(i)+R(:,1),idy(i)+R(:,2),'w')
end
```
#### بررسی کد :
جهت اجرای بهتر کدها در متلب، بهتر است سه دستور اول در ابتدای هر برنامه نوشته شود. 
سپس تصوير را خوانده و آن را خاكستري مي كنيم.
```
clc;
clear;
close all;
img = imread('spring.png') ;
img = rgb2gray(img) ;
```
 برای ایجاد يك مربع نیاز است تا ابعاد آن را مشخص نماییم که 50 در 50 قرار داديم و موقعيت آن را مشخص كرديم.

```
L = 50 ;   % length
B = 50 ;   % breadth 
R = [0 0 ; L 0 ; L B ; 0 B] ; % random Square at locations
```
اگر به كد نگاهي بيندازيم متغيري به نام N معرفي كرده ايم كه اين متغير تعداد مربع ها را مشخص مي نمايد چون طبق صورت سوال بايد يك مربع ايجاد كنيم مقدار 1 را به آن داده ايم.
مي توانيم اين مقدار را به صورت دلخواه تغيير دهيم در اين صورت خواهيم ديد به همان تعداد مربع در تصوير خواهيم داشت .
<br/>
درادامه موقعيتي كه اين مربع به صورت رندم بايد ايجاد شود را تعيين نموده و به كمك تابع path شيء مربع مانند خود را در مختصاتي كاملا رندم بر روي تصوير ايجاد مي كنيم .
<br/>
استفاده از hold out بدين خاطر است كه در همان plot ايجاد شده مربع را نشان دهد .
<br/>
در تابع path ، ورودي اول مختصات تصادفي مربع را ميسازد و ورودي دوم رنگ آن مربع را مشخص ميكند اگر w قرار دهيم مربع سفيد و اگر k قرار دهيم مربع مشكي خواهيم داشت.

```
% draw coordinates
imshow(img)
hold on;
for i=1:N
    patch(idx(i)+R(:,1),idy(i)+R(:,2),'w')
end
```
در نهايت خواهیم داشت:
 
 ![Result](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/3/Result.PNG)
