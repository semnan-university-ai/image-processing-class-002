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
ابتدا تابع ميانگين را مي نويسيم.
<br/>
<br/>
### تابع ميانگين :

ابتدا تصوير را خوانده و خاكستري مي كنيم و سايز تصوير را در ماتريسي نگه مي داريم .
```
function meanFilter = mean(image)
image = imread(image);
image = rgb2gray(image);
[x y] = size(image);
```
سپس چون قرار است فيلتر 7 * 7 را بر روي تصاوير اعمال كنيم بايد 6 لايه در اطراف تصوير به كمك padding انجام شود. بنابراين تصوير جديدي به ابعاد تصوير اوليه + 3 لايه مازاد در هر طرف تصوير ايجاد مي كنيم كه مقادير موجود در pad ، صفر است.
```
NewImage = zeros(x+6,y+6)
```
ساير مقادير را از تصوير اصلي به تصوير جديد منتقل مي كنيم و سايز تصوير جديد را نگه مي داريم.
```
NewImage(4:end-3,4:end-3) = image;
[z w] = size(NewImage);
```
حال بايد فيلتر 7 در 7 خود را تعريف ما آن را در قالب يك ماتريس 7 در 7 با مقادير 1 ميسازيم چون قرار است همه همسايه هاي در ابعاد 7 * 7 خود را تاثير دهد .
```
filter = ones(7,7);
```
براي ذخيره نتايج اصلي ResultImage را معرفي كيديم و ابعادي برابر تصوير اصلي به آن داديم.
```
ResultImage = zeros(x,y);
```
حال به قسمت اصلي برنامه رسيديم كه قرار است مقدار هر پيكسل از ميانگين همسايه هاي موجود در ابعاد 7 * 7 آن پيكسل به دست آيد. دقت شود كه تصوير اصلي ما از ستون 4 تا w - 3 و سطر 4 تا z - 3 قرار دارد بنابراين داريم :
```
for i= 4 : z-3
    for j= 4 : w-3
        avg = 0 ;
        for ii = 1 : 7
            for jj = 1 : 7
                sum = filter(ii,jj)*NewImage(i-4 + ii,j-4 + jj);
                avg = avg + sum;
            end           
        end
        ResultImage(i-3,j-3)= ceil(avg/49);
    end
end 
```
ماتريسي كه دو درايه a , b را دارا مي باشد در حكم فيلتر ماست كه بر روي تصوير در حال حركت است و مقادير ميانگين را در اين ابعاد محاسبه مي كند.
<br/>
تمام 48 همسايه هر پيكسل با هم جمع و تقسيم بر 49 (7 * 7 = 49) شده، سقف عدد در تصوير نتيجه قرار مي گيرد.
<br/>
در نهايت تصوير را نمايش مي دهيم .
```
imshow(ResultImage)
```


سپس برای اعمال اين فیلتر بر روی تصاویر داریم :
```
clc;
close all;
clear;

%mean
t = tiledlayout('flow');
nexttile;imshow(mean('1.jpg'));title('median 1');
nexttile;imshow(mean('2.jpg'));title('median 2');
nexttile;imshow(mean('3.jpg'));title('median 3');
nexttile;imshow(mean('4.jpg'));title('median 4');
nexttile;imshow(mean('5.jpg'));title('median 5');
nexttile;imshow(mean('6.jpg'));title('median 6');
nexttile;imshow(mean('7.jpg'));title('median 7');
nexttile;imshow(mean('8.jpg'));title('median 8');
nexttile;imshow(mean('9.jpg'));title('median 9');
nexttile;imshow(mean('10.jpg'));title('median 10');
nexttile;imshow(mean('11.jpg'));title('median 11');
nexttile;imshow(mean('12.jpg'));title('median 12');
```
خواهيم ديد خروجی تمامی تصاویر در یک figure به نمایش در خواهد آمد.

### تابع ميانه :

