تمرین ۱۸


```
img=imread('peppers.png');
img= rgb2gray(img);
im=imread('poem.jpeg');
Hide=rgb2gray(im);
```

تصویر اولیه و تصویر مخفی شده خوانده شده و به سطح خاکستری تبدیل میشود:
```
Hide= imresize(Hide,[size(img,1),size(img,2)]);
```
همسایز کردن 
اگر سایز دو تصویر متفاوت باشد میتوان با تغییر سایز به صورت قوق ابعاد ان را تنظیم نمود.
```
i=2
bit1=mod(floor(Hide/i^7),i);
bit2=mod(floor(img/i),i);
bit3=mod(floor(img/i^2),i);
bit4=mod(floor(img/i^3),i);
bit5=mod(floor(img/i^4),i);
bit6=mod(floor(img/i^5),i);
bit7=mod(floor(img/i^6),i);
bit8=mod(floor(img/i^7),i);
data=(i*(i*(i*(i*(i*(i*(i*bit8)+bit7)+bit6)+bit5)+bit4)+bit3)+bit2)+bit1;
```
به جای بیت پلن اول تصویر اصلی (bit1) ، مقدار بیت پلین 8 تصویر پنهان  را قرار داده و در نهایت هر کدام از این بیت پلین هارا در مقدار متناظر خود ضرب کرده
و با یکدیگر جمع میکنیم.(تصویر نهان نگاری شده حاصل میشود).

```
figure(1);
imshow((b8.*255))
title('bitplane 8');
figure(2);
subplot (2,3,1)
imshow(img);
title('initail img');
subplot (2,3,2)
imhist(img)
title(' hist initail img');
subplot (2,3,3)
histeq(img)
title('hist equalisation initial img');
subplot (2,3,4)
imshow(uint8(temp));
title('steganography');
subplot (2,3,5)
imhist(temp)
title(' hist steganography');
subplot (2,3,6)
histeq(temp)
title(' histogram equalisation steganography');

 
figure;
subplot (1,2,1)
imshow(uint8(Com1));
title('8-7-6');
subplot (1,2,2)
imshow(img);
title('8-7-6-5-4');

```

تصاویر ورودی:

![input](https://user-images.githubusercontent.com/56272972/169629424-11f3d2d8-81b2-4f49-8865-7218a1622962.jpg)

![poem_input](https://user-images.githubusercontent.com/56272972/169629439-9bf64e61-a39a-4eec-80b5-263bcd9c4c3f.jpeg)


تصاویر خروجی:


![out2](https://user-images.githubusercontent.com/56272972/169629511-0ba54ba8-ba44-4f52-8a3f-61cebe8ab1d5.jpg)
