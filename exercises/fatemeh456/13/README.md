### Exercise 13
```
clc;
close all;
clear;

img = imread("1.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

img = imread("2.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

img = imread("3.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

img = imread("4.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

img = imread("5.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

img = imread("6.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

img = imread("7.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

img = imread("8.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

img = imread("9.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

img = imread("10.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

img = imread("11.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

img = imread("12.jpg");
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');
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
فیلترهای میانه و میانگین را با پنجره 7 در 7 تعريف كرده و بر روی تصاویر سفره هفت سین اعمال می کنیم .
```
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
```
در نهایت خروجی ها را به نمایش در می آوریم .
```
subplot(223);imshow(med);title('median');
subplot(224);imshow(avg);title('Average');
```

براي سادگي همين كد را مي توان به كمك تعريف تابعي به صورت زير نيز نوشت :
```
function img = filter_med_avg(image) 

img = imread(image);
img = im2gray(img);
med = medfilt2(img,[7 7]);
avgfilter = fspecial('average',[7 7]);
avg = imfilter(img,avgfilter);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('Average');

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

#### نتيجه تصوير دوم
![Result](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/13/Result-img2.PNG)
<br/>

#### نتيجه تصوير نهم
![Result](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/13/Result-img9.PNG)
<br/>

#### نتيجه تصوير دوازدهم
![Result](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/13/Result-img12.PNG)
<br/>
