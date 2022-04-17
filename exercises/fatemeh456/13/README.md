### Exercise 13
```
clc;
close all;
clear;

img = imread("1.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 1');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

img = imread("2.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 2');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

img = imread("3.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 3');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

img = imread("4.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 4');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

img = imread("5.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 5');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

img = imread("6.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 6');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

img = imread("7.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 7');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

img = imread("8.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 8');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

img = imread("9.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 9');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

img = imread("10.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 10');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

img = imread("11.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 11');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

img = imread("12.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 12');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

```
#### بررسی کد :
##### 
تنها به ازای یک تصویر کد را بررسی می کنیم .
<br>
جهت اجرای بهتر کدها در متلب، بهتر است سه دستور اول در ابتدای هر برنامه نوشته شود. 
سپس تصوير را خوانده و آن را خاكستري مي كنيم.
```
clc;
close all;
clear;
img = imread("1.jpg");
img = im2gray(img);
```
فیلترهای میانه و میانگین را با پنجره 7 در 7 بر روی تصاویر سفره هفت سین اعمال میکنیم .
```
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
```
در نهایت خروجی ها را به نمایش در می آوریم .
```
subplot(221);imshow(img);title('Original Image 1');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');
```

براي سادگي همين كد را مي توان به كمك تعريف تابعي به صورت زير نيز نوشت :
```
function img = filter_med_avg(image) 

img = imread(image);
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(img);title('Original Image 1');
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('mean');

end
```
در اين تابع كه نام آنرا filter_med_avg قرار داديم و خروجي را در متغيري به نام img برميگرداند، ابتدا تصوير را خوانده ،
سپس آن را خاكستري مي كنيم و در ادامه فيلترهاي ميانه و ميانگين را روي تصوير اعمال و در خروجر نمايش مي دهيم.
<br/>
براي فراخواني اين تابع، كافيست كد اين تابع را با نام خود تابع ذخيره كرده سپس در محيط كد جديدي بنويسيم :
```
clc;
close all;
clear;

filter_med_avg('1.jpg');
filter_med_avg('2.jpg');
filter_med_avg('3.jpg');
filter_med_avg('4.jpg');
filter_med_avg('5.jpg');
filter_med_avg('6.jpg');
filter_med_avg('7.jpg');
filter_med_avg('8.jpg');
filter_med_avg('9.jpg');
filter_med_avg('10.jpg');
filter_med_avg('11.jpg');
filter_med_avg('12.jpg');
```
حال با اجراي آن خواهيم ديد به ازاي تمامي 12 تصوير سفره هفت سين ، تصاوير حاصل از اعمال فيلترهاي ميانه و ميانگين نمايش اده خواهد شد.
<br/>
نتایج را به ازای 3 تصوير از بين 12 تصویر در ادامه خواهیم داشت .

#### نتيجه تصوير اول
![Result]()
<br/>

#### نتيجه تصوير نهم
![Result]()
<br/>

#### نتيجه تصوير دوازدهم
![Result]()
<br/>
