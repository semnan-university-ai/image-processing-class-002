# سوال crop image
## توضیح کد:
این کد در ابتدای همه برنامه ها موجود است و محیط کار در متلب  و متغیر ها و حافظه استفاده شده در برنامه های قبلی را پاک می کند و
همه آپشن های باز را می بندد تا تلاقی در مقدار متغیرها یا فایل ها رخ ندهد.
```
clc;
clear;
close all;
```
این قطعه کد عکس را میخواند و مختصات تصویر را نمایش میدهد.
```
%reading image and showing cordinates
my_img = imread('boat.png');
figure,imshow(my_img), title('orginal image');impixelinfo();
```
این قطعه کد مقادیر برش عکس را از کاربر میگیرد و در متغیر های مربوطه ذخیره میکند.
```
%getting value from user
disp('enter the rows and coloumns value to crop the image:')
row_start=input('row start:');
row_end=input('row end:');
column_start=input('column start:');
column_end=input('column end:');

```
قطعه آخر کد ماتریس عکس را با توجه به مقادیر وارد شده در قسمت قبل در ماتریس جدید ریخته و نمایش میدهد . 
```
%cropping image
cropped_img = my_img(row_start:row_end,column_start:column_end,:);
figure,imshow(cropped_img), title('cropped image');impixelinfo(); 
hold on;
```

در نهایت شکل خروجی به این صورت می باشد: 
![This is an image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/mobina-t77/17/17.png)
