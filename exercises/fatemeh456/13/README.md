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
<br/>
<br/>
اما اگر بخواهیم به جاي استفاده از فيلترها به صورت آماده از توابع دست نويس آن ها استفاده کنیم چه کار کنیم ؟
<br/>
براي نمونه براي فيلتر ميانه نشان مي دهيم .
<br/>
ابتدا تابع ميانه را كه در كلاس حل تمرين با جزئيات آن آشنا شديم مي نويسيم.
<br/>
تابع میانه :
```
function median_result = median(image)

    image = imread(image);
    image = im2gray(image);
    img1 = image;
    img2 = img1;

    median_number = [];
    new_value = 0;

    [x_img y_img] = size(img1);

    pixels = zeros(x_img, y_img);

    for i = 1:x_img
       for j= 1:y_img
        pixels(i, j) = img1(i, j);
       end
    end

    for i = 1:x_img
       for j= 1:y_img
           if(i == 1 && j == 1)
               median_number = [pixels(i, j) pixels(i, j+1) pixels(i+1, j) pixels(i+1, j+1)];
               median_number = sort(median_number);
               new_value = median_number(2);
           elseif(i == x_img && j == 1)
               median_number = [pixels(i-1, j) pixels(i-1, j+1) pixels(i, j) pixels(i-1, j+1)];
               median_number = sort(median_number);
               new_value = median_number(2);
           elseif(i == 1 && j == y_img)
               median_number = [pixels(i, j-1) pixels(i, j) pixels(i+1, j-1) pixels(i+1, j)];
               median_number = sort(median_number);
               new_value = median_number(2);
           elseif(i == x_img && j == y_img)
               median_number = [pixels(i-1, j-1) pixels(i-1, j) pixels(i, j-1) pixels(i, j)];
               median_number = sort(median_number);
               new_value = median_number(2);
           elseif(i == 1)
               median_number = [pixels(i, j-1) pixels(i, j) pixels(i, j+1) pixels(i+1, j-1) pixels(i+1, j) pixels(i+1, j+1)];
               median_number = sort(median_number);
               new_value = median_number(3);
           elseif(i == x_img)
               median_number = [pixels(i-1, j-1) pixels(i-1, j) pixels(i-1, j+1) pixels(i, j-1) pixels(i, j) pixels(i-1, j+1)];
               median_number = sort(median_number);
               new_value = median_number(3);
           elseif(j == 1)
               median_number = [pixels(i-1, j) pixels(i-1, j+1) pixels(i, j) pixels(i-1, j+1) pixels(i+1, j) pixels(i+1, j+1)];
               median_number = sort(median_number);
               new_value = median_number(3);
           elseif(j == y_img)
               median_number = [pixels(i-1, j-1) pixels(i-1, j) pixels(i, j-1) pixels(i, j) pixels(i+1, j-1) pixels(i+1, j)];
               median_number = sort(median_number);
               new_value = median_number(3);
           else
               median_number = [pixels(i-1, j-1) pixels(i-1, j) pixels(i-1, j+1) pixels(i, j-1) pixels(i, j) pixels(i-1, j+1) pixels(i+1, j-1) pixels(i+1, j) pixels(i+1, j+1)];
               median_number = sort(median_number);
               new_value = median_number(4);
           end

           img2(i, j) = new_value;
           new_value = 0;
       end
    end
    
    median_result = img2;

end

```
سپس برای اعمال اين فیلتر بر روی تصاویر داریم :
```
clc;
close all;
clear;

%median
t = tiledlayout('flow');
nexttile;imshow(median('1.jpg'));title('median 1');
nexttile;imshow(median('2.jpg'));title('median 2');
nexttile;imshow(median('3.jpg'));title('median 3');
nexttile;imshow(median('4.jpg'));title('median 4');
nexttile;imshow(median('5.jpg'));title('median 5');
nexttile;imshow(median('6.jpg'));title('median 6');
nexttile;imshow(median('7.jpg'));title('median 7');
nexttile;imshow(median('8.jpg'));title('median 8');
nexttile;imshow(median('9.jpg'));title('median 9');
nexttile;imshow(median('10.jpg'));title('median 10');
nexttile;imshow(median('11.jpg'));title('median 11');
nexttile;imshow(median('12.jpg'));title('median 12');
```
در هر کدام خروجی تمامی تصاویر در یک figure به نمایش در خواهد آمد .
![Result](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/13/Result.png)
