این کد ها برای تمیز نگه داشتن workspace هستند و معمولا همه جا استفاده میشوند
```
clc;
close all;
clear;
```

حال ورودی ها را خوانده و از کانال رنگی به خاکستری میبریم


```
a=imread('Lenna.png');
b=imread('text.jpg');
a=rgb2gray(a); 
b=rgb2gray(b);
```

حال برای اینکه تصویر خود را به bit 8 ببریم با استفاده از یک حلقه مقادیر زیر 127 را 0 و بالای آن را برابر 255 قرار میدهیم 
```
[x,y]=size(a);
for i= 1:x
    for j = 1:y
        if(a(i,j)>127)
             c(i,j) = 1;
        else
             c(i,j) = 0;
        end
    end
end
```
یا میتوان از کد زیر که با تبدیل مقادیر دسیمال به باینری مقدار بیت هشتم را به ما میدهد اسفاده کرد

```
[x,y]=size(a);
for i = 1 : x
    for j = 1 : y
        binary = de2bi(a(i,j),8);
        c(i,j) = binary(8);
    end
end
```

خروجی هردو به شکل زیر میباشد

![bit](https://user-images.githubusercontent.com/94211519/169616742-8f9008b2-b831-4129-a58e-65f2ea0cfdb2.png)

حال برای پنهان سازی مقادیر بیت های کم ارزش خود را پیام و بیت های پر ارزش را بیت تصویر اصلی در نظر میگیریم

```
c1 = mod(a, 2);
c2 = mod(floor(a/2), 2);
c3 = mod(floor(a/4), 2);
c4 = mod(floor(a/8), 2);
c5 = mod(floor(a/16), 2);
c6 = mod(floor(a/32), 2);
c7 = mod(floor(a/64), 2);
c8 = mod(floor(a/128), 2);
  
v1 = mod(b, 2);
v2 = mod(floor(b/2), 2);
v3 = mod(floor(b/4), 2);
v4 = mod(floor(b/8), 2);
v5 = mod(floor(b/16), 2);
v6 = mod(floor(b/32), 2);
v7 = mod(floor(b/64), 2);
v8 = mod(floor(b/128), 2);

cc = (2 * (2 * (2 * (2 * (2 * (2 * (2 * c8 + c7) + c6) + c5) + c4) + c3) + v2) + v1);
```
خروجی به شکل زیر میباشد

![1](https://user-images.githubusercontent.com/94211519/169617303-59e17323-42c5-4e37-a53b-fe257d9e3f4d.jpg)

برای نمایش میتوان بر عکس عمل کرد بیت های با ارزش را 0 و کم ارزش را مقدار دهیم و اگر مقداری بالای 1 بود برابر با 255 شود

```
g1 = mod(cc, 2);
g2 = mod(floor(cc/2), 2);
g3 = mod(floor(cc/4), 2);
g4 = mod(floor(cc/8), 2);
g5 = mod(floor(cc/16), 2);
g6 = mod(floor(cc/32), 2);
g7 = mod(floor(cc/64), 2);
g8 = mod(floor(cc/128), 2);

cc2 = (2 * (2 * (2 * (2 * (2 * (2 * (2 *  + 0) + 0) + 0) + 0) + 0) + g2) + g1);

[x,y]=size(cc2);
for i = 1 : x
    for j = 1 : y
        if cc2(i,j)>1
            cc3(i,j)=255;
        else
            cc3(i,j)=0;
        end
    end
end

```

خروجی به شکل زیر میباشد


![2](https://user-images.githubusercontent.com/94211519/169617538-d4615d8d-8bd9-45f7-a25d-3e961c3b3902.jpg)


روش دیگر این است که بیت های کم ارزش 2 تصویر را با هم xor  میگیریم که اگر مثل هم بودند خروجی ما 0 و در غیر این صورت 1 میشود این عمل روی تمام پیکسل ها با استفاده از یک حلقه انجام میشود

```

height = size(input, 1); 
width = size(input, 2);
embed_counter = 1;
for i = 1 : height 
    for j = 1 : width
            LSB = mod(double(input(i, j)), 2);
            LSB2=mod(double(b(i, j)), 2);
            temp = double(xor(LSB, LSB2));
            output(i, j) = input(i, j)+temp;
          
    end
end
```

خروجی به شکل زیر میباشد

![stegoImage](https://user-images.githubusercontent.com/94211519/169617861-3cebd6ce-ab9f-46ca-aead-85cba0b15c01.png)

حال اگر تصاویر ما هما اندازه نبود میتوان از راه های زیر استفاده کرد

1-در همان ابتدا دو تصویر را با استفاده از متلب به یک سایز یک اندازه تغییر دهیم
```
Lenna=imresize(Lenna, [512 512]); 
text=imresize(text, [512 512]);

```

2- زاه حل بهتر این است که با یک شرط اندازه متن را هم اندازه تصویر اصلی کنیم
```
[x,y]=size(Lenna)
[x1,y1]=size(text)
if size(Lenna)!=size(text)
x1=x;
y1=y1;

else
disp("size is the same");
```

حال برای فشرده سازی میتوان به این صورت عمل کرد که از آن جا که تصاویر ما دارای بیت های کم ارزش و پر ارزش هستند با حذف کردن 4 بیت کم ارزش و دادن مقدار 0 به آن ها میتوان باعث فشرده سازی تصویر شد.


```
c1 = mod(a, 2);
c2 = mod(floor(a/2), 2);
c3 = mod(floor(a/4), 2);
c4 = mod(floor(a/8), 2);
c5 = mod(floor(a/16), 2);
c6 = mod(floor(a/32), 2);
c7 = mod(floor(a/64), 2);
c8 = mod(floor(a/128), 2);
  


cc = (2 * (2 * (2 * (2 * (2 * (2 * (2 * c8 + c7) + c6) + c5) + 0) + 0) + 0) + 0);

```

8 با ارزش ترین بیت و 1 کم ارزش ترین بیت است با توجه به کد خوجی به صورت زیر میباشد

![compressed](https://user-images.githubusercontent.com/94211519/169618594-b0cbd7d4-ca6f-4493-87b7-97c46eeb5719.jpg)

حال با استفاده از کد های تمرین 12 هیستوگرام تصاویر را نشان میدهیم

![compare 1](https://user-images.githubusercontent.com/94211519/169618641-90a409f2-b137-43d6-96ad-9ee6e35edcc8.jpg)

دلیل متفاوت بودن هیستوگرام این است که ما مقادیری که حذف کردیم باعث شده کا بازه ما از 255 به 240 کاهش پیدا کند و بعضی از مقدایر وجود ندارد و همین رو هیستو گرام تاثیر میگزارد

دوباره با استفاده از تمرین 12 بهینه سازی هیستوگرام را انجام میدهیم که تصاویر خروجی به صورت زیر میشوند

![compare 2](https://user-images.githubusercontent.com/94211519/169618889-ccf55b80-b377-43a1-a71d-5c9ed90b146c.jpg)

برای افزایش کنتراست باید گفت که میتوان انجام داد چرا که با اینکه بازه ما کاهش یافته اما هنوز از طیف خاکستری بهترین استفاده را نمیکند اما اگر بعد از بهینه سازی هیستوگرام این کار را انجام بدهیم تاثیر زیادی ندارد همانند تصویر زیر

![contrast](https://user-images.githubusercontent.com/94211519/169619082-26fae08c-0072-4636-8ed3-6960d08c7674.jpg)

