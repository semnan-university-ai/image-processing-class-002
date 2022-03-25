# ***تمرین اول: محاسبه GPA***

این قسمت، برای پاک کردن حافظه و متغییرهایی است که شاید در اجرا های قبلی مورد استفاده قرارگرفته اند، و تقریبا در همه کدهای ما استفاده می‌شود.

```
clear;
close all;
clc;
```
نمره بر مبنای 20 از کاربر گرفته می‌شود
```
studentNum=input("input your score in scale of 20: ");
```

نمره در مبنای 100 حساب می‌شود:
```
score100 = studentNum * 5;
```
در ادامه طبق جدول موجود در اینترنت، مقیاس حرفی و عددی در مبنای 4 نیز نشان داده می‌شود.
در آخر نیز اگر نمره در مبنای 20 نباشد، نمره صحیح را از کاربر درخواست می‌کند...
```
if round(score100) <= 100 && round(score100) >=97
    ans = "A+";
    numScale4 = 4;
elseif round(score100) <= 96 && round(score100) >=93
    ans = "A";
    numScale4 = 4;
elseif round(score100) <= 92 && round(score100) >=90
    ans = "A-";
    numScale4 = 3.7;
elseif round(score100) <= 89 && round(score100) >=87
    ans = "B+";
    numScale4 = 3.3;
elseif round(score100) <= 86 && round(score100) >=83
    ans = "B";    
    numScale4 = 3.0;
elseif round(score100) <= 82 && round(score100) >=80
    ans = "B-";
    numScale4 = 2.7;
elseif round(score100) <= 79 && round(score100) >=77
    ans = "C+";
    numScale4 = 2.3;
elseif round(score100) <= 76 && round(score100) >=73
    ans = "C";
    numScale4 = 2.0;
elseif round(score100) <= 72 && round(score100) >=70
    ans = "C-";
    numScale4 = 1.7;
elseif round(score100) <= 69 && round(score100) >=67
    ans = "D+";
    numScale4 = 1.3;
elseif round(score100) <= 66 && round(score100) >=65
    ans = "D";
    numScale4 = 1.0;
elseif round(score100) <= 64 && round(score100) >=60
    ans = "D-";
    numScale4 = 1.0;
elseif round(score100) <= 59
    ans = "F";
    numScale4 = 0.0;
else
    ans = "please enter true number...";   
end```
