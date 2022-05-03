## تمرین 16، تبدیل عکس رنگی به true color

این قسمت، برای پاک کردن حافظه و متغیرهایی است که شاید در اجرا های قبلی مورد استفاده قرارگرفته‌اند، و تقریبا در همه کدهای ما استفاده می‌شود.

```
clear;
close all;
clc;
```
با این قسمت از کد، عکس را از فولدر بنچمارک خوانده و و در متغیر img نگهداری می‌کنیم. در خطوط بعد طول و عرض آن را برای عمومی تر کردن برنامه در متغیرهای اسکالر می‌ریزیم. 
```
img= imread("benchmark/cat.png");

size=size(img);
sizeWidth = size(1,1);
sizeHeight = size(1,2);
```

در اینجا یک ماتریس 0 به سایز طول و عرض تصویر ورودی می‌سازیم: 
```
result=zeros(sizeWidth,sizeHeight);

resultImg=uint16(result);
```

در اینجا به وسیله دو حلقه تودرتو برای هر رنگ، مجموعا 3 بار، بازه 0 تا 255 را به 6 قسمت تقسیم کرده(0-51-102-153-204-255) و برای دقت بالاتر هربازه را نیز به 2 قسمت تقسیم کردیم، تا عدد بدست آمده را به مرز بازه نزدیک تر کنیم، یعنی اگر به سر بازه نزدیک تر بود، آن را مساوی عدد انتهای بازه می‌گذاریم، اگر نه ، برابر ابتدای بازه....
```
% red
for i=1 : sizeWidth
    for j=1 : sizeHeight
        if img(i,j,1)< 25
            resultImg(i,j,1)= 0;
        elseif img(i,j,1) < 76
            resultImg(i,j,1)=51;
        elseif img(i,j,1)< 127
            resultImg(i,j,1)= 102;
        elseif img(i,j,1) < 178
            resultImg(i,j,1)=153;
        elseif img(i,j,1)< 229
            resultImg(i,j,1)= 204;
        else
            resultImg(i,j,1)=255;
        end        
    end
end


% green
for i=1 : sizeWidth
    for j=1 : sizeHeight
        if img(i,j,2)< 25
            resultImg(i,j,2)= 0;
        elseif img(i,j,2) < 76
            resultImg(i,j,2)=51;
        elseif img(i,j,2)< 127
            resultImg(i,j,2)= 102;
        elseif img(i,j,2) < 178
            resultImg(i,j,2)=153;
        elseif img(i,j,2)< 229
            resultImg(i,j,2)= 204;
        else
            resultImg(i,j,2)=255;
        end        
    end
end

% blue
for i=1 : sizeWidth
    for j=1 : sizeHeight
        if img(i,j,3)< 25
            resultImg(i,j,3)= 0;
        elseif img(i,j,3) < 76
            resultImg(i,j,3)=51;
        elseif img(i,j,3)< 127
            resultImg(i,j,3)= 102;
        elseif img(i,j,3) < 178
            resultImg(i,j,3)=153;
        elseif img(i,j,3)< 229
            resultImg(i,j,3)= 204;
        else
            resultImg(i,j,3)=255;
        end        
    end
end
```

## در آخر هم با دستور ``` figure, imshow(uint8(resultImg)); ``` نتیجه را نمایش می‌دهیم:

![image_result](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/asset/trueColor.jpg?raw=true)
