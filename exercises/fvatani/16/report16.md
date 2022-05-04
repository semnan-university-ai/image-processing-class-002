

```
clc;
clear all;
close all;

image = imread('pears.png');
```
از دستورات clear all، clc و close all  به ترتیب برای پاک کردن صفحهCommand Window، حذف متغیرها و بستن پنجره ها استفاده شده است. تصویر با دستور imread خوانده شده است.
```
for i = 1 : size(image,1)
    for j = 1 : size(image,2)
        for k = 1 : 3
  
            if image(i, j, k) < 51 && image(i, j, k) > -1
                if image(i, j, k) <= 25
                   image(i, j, k) = 0;
                else
                   image(i, j, k) = 51;
                end
                
            elseif image(i, j, k) < 102 && image(i, j, k) >= 51
                if image(i, j, k) <= 76
                   image(i, j, k) = 51;
                else
                   image(i, j, k) = 102;
                end
                
            elseif image(i, j, k) < 153 && image(i, j, k) >= 102
                if image(i, j, k) <= 127
                   image(i, j, k) = 102;
                else
                   image(i, j, k) = 153;
                end   
                
            elseif image(i, j, k) < 204 && image(i, j, k) >= 153 
                if image(i, j, k) <= 178
                   image(i, j, k) = 153;
                else
                   image(i, j, k) = 204;
                end
            
            elseif image(i, j, k) > 255 && image(i, j, k) >= 204
                if image(i, j, k) <= 229
                   image(i, j, k) = 204;
                else
                   image(i, j, k) = 255;
                end
            
            else
                image(i, j, k) = 255;
            end
            
        end
        
    end
end

```
حلقه به اندازه طول و عرض تصویر تکرار می‌شود. k کانال رنگ تصویر را نشان می‌دهد. مقدار پیکسل به بازه‌های ([۱۵۳، ۲۰۴]، [۱۰۲، ۱۵۳]، [۵۱، ۱۰۲]، [۵۱، ۱-]) تقسیم شده است. اگر مقداری در بازه‌های مورد نظر قرار نگیرد مقدار ۲۵۵ برای آن ذخیره می‌شود. هر بازه ۵۰ مقدار را در برمیگیرد که اگر مقدار پیکسل در ۱/۲ اول بازه قرار گیرد به سمت پایین رند می‌شود و گرنه به بالا رند می‌شود.
```
figure, imshow(image);
```
خروجی نمایش داده می‌شود.
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/16/tamrin16.png)

