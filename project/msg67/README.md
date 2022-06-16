## درحال تکمیل.....
# image-processing-class
image processing class - 002

# پروژه تشخیص اسکناس
در این پروژه تصویر اسکناس به برنامه داده می‌شود، و برنامه ما باید تشخیص درستی از مقدار پول به وسیله دیتابیس از قبل آماده خود بدهد، در حقیقت باید ورودی را در دسته درست دسته بندی کند.
مثل همه برنامه‌ها در این کلاس، بازهم برنامه با 3 عبارت زیر جهت پاک کردن حافظه و workspace و مقادیر شروع می‌شود:
```
clc;
clear;
close all;
```
در قسمت بعد، بوسیله uigetfile یک پنجره جهت ورودی باز می‌شود:
```
 [filename,path] = uigetfile({'*.jpg';'*.jpeg';},...
                          'Select an Image File');

  img=imread([path filename]);
```

بعد از ورود یک عکس JPG یا JPEG بوسیله یک تابع به قسمت اصلی برنامه وارد می‌شویم:
ابتدای تابع و بعد از مقدار‌دهی‌های اولیه‌، با این دستور بررسی می‌کنیم که تصویر در راستای درستی می‌باشد یا خیر. در نهایت اگر نبود آن را rotate می‌کند:
```
if(size(input_img,1)>size(input_img,2))
    check_img=imresize(input_img,[NaN 295]);    % check image= vorodi
else
    check_img=imresize(input_img,[295 NaN]);
end
```

