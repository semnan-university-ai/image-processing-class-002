# task 1

## GPA calculation

در ادامه به توضیح کد محاسبه GPA در برنامه متلب برداخته می‌شود:
```
1)clc;
2)close all;
3)close all;
```
در این بلوک کدی در خط اول محیط command window کاملا پاک می‌شود. در خظ دوم با این دستور محیط work space پاک می‌شود و در نهایت در خط سوم با این دستور کلیه پنجره‌هاییی نظیر feagureها بسته می‌شود.
```
nomre=input("lotfan nomre khod ra vared namaeed=  ");
```
در این خط نمره کاربر توسط دستور input دریافت می‌شود و بعد از اجرای برنامه از کاربر درخواست می‌شود که نمره خود را جهت محاسبه GPA وارد کند.

```
1)if nomre<=20 && nomre>=16
2)    disp("your grade is= A ")
3)elseif nomre<=20 && nomre>=16
4)    disp("your grade is= B ")
5)elseif nomre<=15.99 && nomre>=14
6)    disp("your grade is= C ")
7)elseif nomre<=13.99 && nomre>=12
8)    disp("your grade is= D ")
9)elseif nomre<=11.99 && nomre>=10
10)    disp("your grade is= E ")
11)elseif nomre<=9.99
12)    disp("your grade is= F ")    
13)end
```

با دریافت نمره کاربر توسط دستور input در بلوک کد قبلی، در این بلوک کدی توسط جملات شرطی به محاسبه GPA پرداخته می‌شود. 
