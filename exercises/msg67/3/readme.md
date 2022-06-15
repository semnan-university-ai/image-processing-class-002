## تمرین: ایجاد مربع 50 در 50 به صورت رندم بر روی تصویر

این قسمت، برای پاک کردن حافظه و متغیرهایی است که شاید در اجرا های قبلی مورد استفاده قرارگرفته‌اند  و همه پنجره‌ها؛ و تقریبا در همه کدهای ما استفاده می‌شود.

```
clear;
close all;
clc;
```
با این قسمت از کد، عکس را از فولدر بنچمارک خوانده و و در متغیر img نگهداری می‌کنیم. در خطوط بعد طول و عرض آن را در متغیرهای اسکالر می‌ریزیم. 
```
img= imread("benchmark/cat.png");

size=size(img);
sizeWidth = size(1,1);
sizeHeight = size(1,2);
```
در این قسمت تصویر به همراه محورهای مختصات، نمایش داده می شود.
```
figure,imshow(img),hold on
axis on

```
اینجا، xr و yr را برابر متغیر رندم، جهت تغییر محل مربع، قرار می دهیم:
```
xr=randi(sizeWidth);
xrr=xr;
yr=randi(sizeHeight);
yrr=yr;
```
با این دو خط، مختصات 4 گوشه مربع را مشخص میکنیم:
```
x=[50 , 50 , 0, 0 ];
y=[50 , 0 , 0 , 50];
```
این قسمت اصلی کد می‌باشد:
ابتدا بررسی می کند که x و y تولید شده، در بازه مختصات تصویر می باشد یا خیر...
در صورت نبودن، با یک حلقه while تا زمانی که این شرط برقرار نباشد، تولید عدد رندم ادامه پیدا می کند:
```
if xr<(sizeHeight-50) && yr<(sizeWidth-50)
    plot( x+xr, y+yr , 'b', 'MarkerSize', 10, 'LineWidth', 1);
    fill(x+xr,y+yr , 'w')
else
    while xr>(sizeHeight-50) || yr>(sizeWidth-50)
     xr=randi(sizeHeight-50);
     yr=randi(sizeWidth-50);
     plot( x+xr, y+yr , 'b', 'MarkerSize', 10, 'LineWidth', 1);
     fill(x+xr,y+yr , 'w')
     break;
     
end
  
end
```

## نتیجه:
### متغیرهای xrr و yrr جهت تست حلقه while گذاشته شد...
![image Result](https://github.com/semnan-university-ai/image-processing-class-002/raw/main/exercises/msg67/asset/randSquare.png)
