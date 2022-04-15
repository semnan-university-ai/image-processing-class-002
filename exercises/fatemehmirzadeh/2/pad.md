**تمرین 2**
<br>
ابتدا تصویر را بااستفاده از دستور زیر می خوانیم:
```
img= imread('boat.png');
```
چون تصویر انتخابی یک تصویر خاکستری می باشد بنابراین نیازی نیست که آن را مجددا به تصویر سطح خاکستری تبدیل نماییم و با استفاده از دستور subplot متلب تصویر اصلی را نمایش می دهیم :
```
subplot(1,2,1);
imshow(img);
title('original img');
```
سپس سایز تصویر را در یک آرایه ای ذخیره می کنیم و یک ماتریس صفر که سایز این ماتریس صفر دوپیکسل بزرگتر از سایز تصویر اصلی می باشد ایجاد می کنیم:

```
[x,y]=size(img);
padd=zeros(x+2,y+2);
```
سپس پد بالای تصویر را ایجاد می کنیم :
```
for i=1
    for j=1 : y
        padd(i,j+2)= img(i,j); 
    end
end   
```
پد پایین :
```
for i=x
    for j=1 : y
        padd(i+2,j+1)= img(i,j); 
    end
end    
```
پد راست :
```
for i=1 : x
    for j=y
        padd(i+1,j+2)= img(i,j); 
    end
end 
```
پد چپ :
```
for i=1 : x
    for j=1
        padd(i,j)= img(i,j); 
    end
end 
```
و سپس تصویر را نمایش می دهیم :
```
subplot(1,2,2);
imshow(uint8(padd));
title('result image');
```
خروجی :
![output](https://user-images.githubusercontent.com/94124607/163566054-c3d3b9cf-ac57-4636-bd77-192687f8bed9.png)