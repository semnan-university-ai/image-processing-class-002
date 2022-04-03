### Exercise 8
```
clc;
clear;
close all;
img=uint8(randi(255,1000,1000,1)); %255 = max number
figure, imshow(img)
imwrite(img,'myImage.png')
```
#### بررسی کد :
جهت اجرای بهتر کدها در متلب، بهتر است سه دستور اول در ابتدای هر برنامه نوشته شود. 
```
clc;
clear;
close all;
```
سپس از تابع randi جهت توليد تصوير با مقادير تصادفي استفاده مي كنيم كه 4 ورودي مي گيرد .
ورودي اول ماكزيمم مقداري است كه ژيكسل هاي تصوير مي توانند به خود بگيرند.
<br/>
ورودي دوم و سوم ابعاد تصوير را مشخص ميكند كه چه تعداد سطر و ستون داشته باشد .
<br/>
ورودي چهارم مشخص مي كند تصوير مان Gray level باشد يا رنگي كه اگر مقدار 1 قرار دهيم تصويري خاكستري به ما خواهد داد و 
اگر 3 قرار دهيم تصويري رنگي به ما خواهد داد .
<br/>
استفاده از unit 8 به اين دليل است كه مقاديري كه به صورت تصادفي ايجاد مي شوند اعداد صحيح و مثبت باشند چون مقدار يك پيكسل نمي تواند 
عددي منفي يا اعشاري باشد .

```
img=uint8(randi(255,1000,1000,1));
```
در نهایت تصویر را نمایش داده و در قالب تصویر جدیدی با نام MyImage ذخیره می کنیم .
```
figure, imshow(img)
imwrite(img,'myImage.png')
```
در نهايت نتیجه زیر حاصل خواهد شد:
 
 ![Result](https://raw.githubusercontent.com/semnan-university-ai/image-processing-class-002/main/exercises/fatemeh456/8/myImage.png?token=GHSAT0AAAAAABPAIYAILGR24WVGBTGQDIVCYSJ5ORA)