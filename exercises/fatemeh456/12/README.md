### Exercise 12
```
clc;
clear;
close all;
figure,
img1 = imread('1.jpg');
img1 = rgb2gray(img1);
heq1 = histeq(img1);
imwrite(heq1,'Equal_img1.jpg');
subplot(221);imshow(img1);title('Original Image 1');
subplot(222);imshow(heq1);title('Equalized Image 1');

figure,
img2 = imread('2.jpg');
img2 = rgb2gray(img2);
heq2 = histeq(img2);
imwrite(heq2,'Equal_img2.jpg');
subplot(221);imshow(img2);title('Original Image 2');
subplot(222);imshow(heq2);title('Equalized Image 2');

figure,
img3 = imread('3.jpg');
img3 = rgb2gray(img3);
heq3 = histeq(img3);
imwrite(heq3,'Equal_img3.jpg');
subplot(221);imshow(img3);title('Original Image 3');
subplot(222);imshow(heq3);title('Equalized Image 3');

figure,
img4 = imread('4.jpg');
img4 = rgb2gray(img4);
heq4 = histeq(img4);
imwrite(heq4,'Equal_img4.jpg');
subplot(221);imshow(img4);title('Original Image 4');
subplot(222);imshow(heq4);title('Equalized Image 4');

figure,
img5 = imread('5.jpg');
img5 = rgb2gray(img5);
heq5 = histeq(img5);
imwrite(heq5,'Equal_img5.jpg');
subplot(221);imshow(img5);title('Original Image 5');
subplot(222);imshow(heq5);title('Equalized Image 5');

figure,
img6= imread('6.jpg');
img6 = rgb2gray(img6);
heq6 = histeq(img6);
imwrite(heq6,'Equal_img6.jpg');
subplot(221);imshow(img6);title('Original Image 6');
subplot(222);imshow(heq6);title('Equalized Image 6');

figure,
img7= imread('7.jpg');
img7 = rgb2gray(img7);
heq7 = histeq(img7);
imwrite(heq7,'Equal_img7.jpg');
subplot(221);imshow(img7);title('Original Image 7');
subplot(222);imshow(heq7);title('Equalized Image 7');

figure,
img8= imread('8.jpg');
img8 = rgb2gray(img8);
heq8 = histeq(img8);
imwrite(heq8,'Equal_img8.jpg');
subplot(221);imshow(img8);title('Original Image 8');
subplot(222);imshow(heq8);title('Equalized Image 8');

figure,
img9= imread('9.jpg');
img9 = rgb2gray(img9);
heq9 = histeq(img9);
imwrite(heq9,'Equal_img9.jpg');
subplot(221);imshow(img9);title('Original Image 9');
subplot(222);imshow(heq9);title('Equalized Image 9');

figure,
img10= imread('10.jpg');
img10 = rgb2gray(img10);
heq10 = histeq(img10);
%imwrite(heq10,'Equal_img10.jpg');
subplot(221);imshow(img10);title('Original Image 10');
subplot(222);imshow(heq10);title('Equalized Image 10');

figure,
img11= imread('11.jpg');
img11 = rgb2gray(img11);
heq11 = histeq(img11);
imwrite(heq11,'Equal_img11.jpg');
subplot(221);imshow(img11);title('Original Image 11');
subplot(222);imshow(heq11);title('Equalized Image 11');

figure,
img12= imread('12.jpg');
img12 = rgb2gray(img12);
heq12 = histeq(img12);
imwrite(heq12,'Equal_img12.jpg');
subplot(221);imshow(img12);title('Original Image 12');
subplot(222);imshow(heq12);title('Equalized Image 12');

```
#### بررسی کد :
#####
تنها به ازای یک تصویر کد را بررسی می کنیم .
<br>
جهت اجرای بهتر کدها در متلب، بهتر است سه دستور اول در ابتدای هر برنامه نوشته شود. 
سپس تصوير را خوانده و آن را خاكستري مي كنيم.
```
clc;
clear;
close all;
img1 = imread('1.jpg');
img1 = rgb2gray(img1);
```
سپس هموار سازی یا بهینه سازی هیستوگرام  را بر روی تصویراعمال نموده و آن را در قالب تصویر جدید ذخیره می کنیم .
```
heq1 = histeq(img1);
imwrite(heq1,'Equal_img1.jpg');
```
در نهایت تصویر اصلی و تصویر نتیجه را نمایش می دهیم .
```
subplot(221);imshow(img1);title('Original Image 1');
subplot(222);imshow(heq1);title('Equalized Image 1');
```

براي سادگي، همين كد را مي توان به كمك تعريف تابعي به صورت زير نيز نوشت :
```
function img = histequal(image) 

img = imread(image);
img = rgb2gray(img);
heq = histeq(img);
figure,
subplot(221);imshow(img);title('Original Image');
subplot(222);imshow(heq);title('Equalized Image');

end
```
در اين تابع كه نام آنرا histequal قرار داديم و خروجي را در متغيري به نام img برميگرداند، ابتدا تصوير را خوانده ،
سپس آن را خاكستري مي كنيم ، در ادامه هموار سازي هيستوگرام را روي تصوير اعمال نموده و در نهايت تصوير اصلي و نهايي را نمايش مي دهيم.
<br/>
براي فراخواني اين تابع، كافيست كد اين تابع را با نام خود تابع ذخيره كرده سپس در محيط كد جديدي، بنويسيم :
```
clc;
clear;
close all;
histequal('1.jpg');
histequal('2.jpg');
histequal('3.jpg');
histequal('4.jpg');
histequal('5.jpg');
histequal('6.jpg');
histequal('7.jpg');
histequal('8.jpg');
histequal('9.jpg');
histequal('10.jpg');
histequal('11.jpg');
histequal('12.jpg');
``` 
حال با اجراي آن خواهيم ديد به ازاي تمامي 12 تصوير سفره هفت سين ، هموار سازي يا بهينه سازي هيستوگرام انجام مي شود .
<br/>
نتایج را به ازای هر 12 تصویر سفره هفت سین در ادامه خواهیم داشت .
<br/>
- تصوير اول 

<br/>
![Result](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/12/Result/Result%20(1).PNG)
<br/>


- تصوير دوم
<br/>
![Result](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/12/Result/Result%20(2).PNG)
<br/>


- تصوير سوم
<br/>
![Result](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/12/Result/Result%20(3).PNG)
<br/>


- تصوير چهارم
<br/>
![Result](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/12/Result/Result%20(4).PNG)
<br/>


- تصوير پنجم
<br/>
![Result](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/12/Result/Result%20(5).PNG)
<br/>


- تصوير ششم
<br/>
![Result](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/12/Result/Result%20(6).PNG)
<br/>


- تصوير هفتم
<br/>
![Result](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/12/Result/Result%20(7).PNG)
<br/>


- تصوير هشتم
<br/>
![Result](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/12/Result/Result%20(8).PNG)
<br/>


- تصوير نهم
<br/>
![Result](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/12/Result/Result%20(9).PNG)
<br/>


- تصوير دهم
<br/>
![Result](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/12/Result/Result%20(10).PNG)
<br/>


- تصوير يازدهم
<br/>
![Result](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/12/Result/Result%20(11).PNG)
<br/>


- تصوير دوازدهم
<br/>
![Result](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/12/Result/Result%20(12).PNG)
<br/>
