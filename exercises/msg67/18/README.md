## تمرین 18 : Bit Plane و نهان‌نگاری

این قسمت، برای پاک کردن حافظه و متغیرهایی است که شاید در اجرا های قبلی مورد استفاده قرارگرفته‌اند، و تقریبا در همه کدهای ما استفاده می‌شود.

```
clear;
close all;
clc;
```
در این قسمت از کد، عکس ```LENA``` و ```Text``` به عنوان دو ورودی خوانده و در متغیرهای img و text نگهداری می‌کنیم. در خطوط بعد طول و عرض آن را برای عمومی تر کردن برنامه در متغیرهای اسکالر می‌ریزیم. 
```
img= imread("asset/Lenna.png");
figure,imshow(uint8(img)),hold on

img=rgb2gray(img);
figure,imshow(uint8(img)),hold on

textIn=imread("asset/text.jpg");
figure, imshow(textIn)




size=size(img);
sizeWidth = size(1,1);
sizeHeight = size(1,2);
```
جهت ایجاد صفحه‌های بیتی، باید از تکنیک thresholding تصویر استفاده کنیم، برای این کار باید 8 بیت هر پیکسل را به نحو زیر پردازش کنیم:
اگر دقت کنیم، از عدد 255 تا 128 ، بیت شماره 8، 1 و از 127 تا 0 ، بیت شماره 8، 0 می‌باشد.

همین طور از 255 (11111111) تا 192 (11000000) تمام بیت‌های شماره 7، 1 و  از 191(10111111) تا 128(10000000) تمام بیت‌های شماره 7، 0 و از 127(01111111) تا 64(01000000) دوباره تمام بیت‌های شماره 7، 1 و 63(00111111) تا 0(00000000) تمام بیت‌های شماره 7، 0 می‌باشند.

و همین طور این ترتیب برای بیت‌هالی شماره 6 و 5 تا شماره 1 تکرار می‌شود. با این نگاه که هرچه به بیت‌های پایین‌تر نزدیک می‌شویم، بازه‌ها کوچک‌تر و تعداد آنها بیشتر می‌شود.
با توجه به این موضوع و تعدد بازه ها، پیاده سازی با for loop خیلی سخت و احتمال خطای انسانی در آن وجود داشت.... بنابراین، اعداد ```intensity``` هر پیکسل را در مبنای 10 و با اعداد ``` double``` ابتدا تقسیم بر عدد مبنای آن پایه می‌کنیم، سپس باقی مانده آن را بر 2 حساب می‌کنیم.
```
imgDouble= double(img);

% ijade bit plane haye 1 ta 8
b1 = mod(imgDouble, 2);
b2 = mod(floor(imgDouble/2), 2);
b3 = mod(floor(imgDouble/4), 2);
b4 = mod(floor(imgDouble/8), 2);
b5 = mod(floor(imgDouble/16), 2);
b6 = mod(floor(imgDouble/32), 2);
b7 = mod(floor(imgDouble/64), 2);
b8 = mod(floor(imgDouble/128), 2);

```
برای تست کد و به دست آوردن تصویر اصلی، تمامی ```bit Plane``` هایی که در قسمت قبل بدست آوردیم را به روش معکوس باهم جمع می‌کنیم و آن را در متغییر orginalPic ذخیره می‌کنیم:
```
orginalPic = (2 * (2 * (2 * (2 * (2 * (2 * (2 * b8 + b7) + b6) + b5) + b4) + b3) + b2) + b1);
```

در این قسمت به وسیله subplot تمامی تصاویر bitPlane ها + تصویر اصلی و تصویری که دوباره ساخته شده است را در یک plot نمایش می‌دهیم:
```
subplot(2, 5, 1);
imshow(img);
title('Original Image');


subplot(2, 5, 2);
imshow(b1);
title('Bit Plane 1');
subplot(2, 5, 3);
imshow(b2);
title('Bit Plane 2');
subplot(2, 5, 4);
imshow(b3);
title('Bit Plane 3');
subplot(2, 5, 5);
imshow(b4);
title('Bit Plane 4');
subplot(2, 5, 6);
imshow(b5);
title('Bit Plane 5');
subplot(2, 5, 7);
imshow(b6);
title('Bit Plane 6');
subplot(2, 5, 8);
imshow(b7);
title('Bit Plane 7');
subplot(2, 5, 9);
imshow(b8);
title('Bit Plane 8');


subplot(2, 5, 10);
imshow(uint8(orginalPic));
title('Recombined Image');
```

![imageResult](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/asset/bitPlane.jpg?raw=true)
