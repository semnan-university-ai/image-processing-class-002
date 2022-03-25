```
clc;
clear all;
close all;
```
از دستورات clear all، clc و close all  به ترتیب برای پاک کردن صفحهCommand Window، حذف متغیرها و بستن پنجره ها استفاده شده است.
```
grade = "";
number = input('Enter your grade\n');
```
یک متغیر برای ذخیره نتیجه ایجاد شده است. در سطر بعد ورودی که نمره کاربر است دریافت شده و در number ذخیره می‌شود.
```
if number>=0 && number<=20
```
با این دستور شرطی چک می‌شود که آیا نمره در بازه 0 تا 20 قرار دارد یا نه در صورتکه که شرط مورد نظر برقرار نباشد 
```
else 
    fprintf('Error: Please only enter numbers between 0-20\n')
```
این قسمت  else اجرا شده و پیغام ارور به کاربر نشان داده می‌شود. اگر مقدار ورودی در بازه مورد نظر باشد
```
    number=fix(number*5) 
    if number>=97 && number<=100
        grade = "(4.0) A+";
    elseif number>=93 && number<=96
        grade = "(4.0) A";
    elseif number>=90 && number<=92
        grade = "(3.7) A-";
    elseif number>=87 && number<=89
        grade = "(3.3) B+";
    elseif number>=83 && number<=86
        grade = "(3.0) B";
    elseif number>=80 && number<=82
        grade = "(2.7) B-";
    elseif number>=77 && number<=79
        grade = "(2.3) C+";
    elseif number>=73 && number<=76
        grade = "(2.0) C";
    elseif number>=70 && number<=72
        grade = "(1.7) C-";
    elseif number>=67 && number<=69
        grade = "(1.3) D+";
    elseif number>=65 && number<=66
        grade = "(1.0) D";
    elseif number<65
        grade = "(0.0) E/F";
    end
```
قسمت بالا که درون شرط قرار دارد اجرا می‌شود. ابتدا نمره کاربر در 5 ضرب می‌شود که به بازه 0 تا 100 جهت تعیین نمره gpa برود. بازه نمرات براساس این [سایت ](https://pages.collegeboard.org/how-to-convert-gpa-4.0-scale) تعیین شده است.
علت استفاده از تابع fix جهت رند کردن نمره در بازه اعداد صحیح بود. از آنجا که نمرات بین بازه برای مثال 96 تا 97 ، 92 تا 93 و غیره در هیچ بخشی جای نمیگرفتند نمرات رند شدند.
حال اگر کاربر نمره 18.5 را وارد کند حاصل 92.5=5*18.5 به 92 رند می‌شود و حاصل -A است.

```
if grade ~= ""
   fprintf('Grade in GPA: %s \n',grade);
end
```
 درصورتی که مقداری در متغیر grade ذخیره شده باشد حاصل نمایش داده می‌شود.
 
 خروجی:
 
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/1/tamrin1.png)

