## تمرین 17، برش تصویر


این قسمت، برای پاک کردن حافظه و متغیرهایی است که شاید در اجرا های قبلی مورد استفاده قرارگرفته‌اند، و تقریبا در همه کدهای ما استفاده می‌شود.

```
clear;
close all;
clc;
```
با این قسمت از کد، عکس را از فولدر بنچمارک خوانده، آن را GrayScale کرده و در متغیر img نگهداری می‌کنیم. در خطوط بعد طول و عرض آن را در متغیرهای اسکالر می‌ریزیم. 
```
img= imread("benchmark/cat.png");
img=rgb2gray(img)
size=size(img);
sizeWidth = size(1,1);
sizeHeight = size(1,2);
```
### به وسیله ```figure,imshow(uint8(img)),hold on ; ``` تصویر اصلی را نمایش می‌دهیم:

![image Result](https://github.com/semnan-university-ai/image-processing-class-002/raw/main/exercises/msg67/asset/rgb2grayscale.jpg)

در اینجا یک ماتریس 0 به سایز طول و عرض تصویر ورودی می‌سازیم تا نتیجه کار را در آن ذخیره کنیم: 
```
result=zeros(sizeWidth,sizeHeight);

```
 به وسیله خطوط زیر، 2 نقطه برای شروع و خاتمه برش عکس از کاربر می‌گیریم:
 ```
 xx1=input("please enter your first numberr in range of 0 and "...
    +sizeWidth+ ": ");
xx2=input("please enter your second numberr in range of "+ xx1 +...
    " and "+sizeWidth+ ": ");
yy1=input("please enter your first numberr in range of 0 and "...
    +sizeHeight+ ": ");
yy2=input("please enter your second numberr in range of "+yy1+" and "...
    +sizeHeight+ ": ");
 ```
 در خطوط بعدی، ابتدا دو متغیر کمکی تعریف می‌کنیم، سپس از طریق دو حلقه تو در تو به ابعاد سایزی که کاربر وارد کرده است، پیکسل های عکس را در ماتریسی به طول و عرض تصویر ذخیره میکنیم
 
 
 ```
l=1;
k=1;

for i=min(xx1,xx2) : max(xx1,xx2)
    for j=min(yy1,yy2) : max(yy1,yy2);
         result(l,k)=img(i,j);  
         k=k+1;
    end
    k=1;
    l=l+1;
end

 ```


در پایان هم باتوجه به خطاهایی که در روش‌های دیگر داشتم، و تست کد، مناطق خیلی نزدیک به انتهای بازه را تست کردم و با دستور زیر تصویر نتیجه را نشان دادم:
```
figure, imshow(uint8(resultImg));
```

## نتیجه:
![image Result](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/asset/crop.jpg?raw=true)

مثال دیگر با پارامترهای : 250 ، 500  و 150 و 300  :

![image Result](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/msg67/asset/crop2.jpg?raw=true)
