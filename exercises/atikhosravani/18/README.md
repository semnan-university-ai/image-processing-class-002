<div dir="rtl">
  
 ### نهان نگاری تصویر:
  
  </br>
  
<div dir="rtl">
 در ابتدا دستورات clc  ، clear و close all برای پاک کردن صفحهCommand Window، حذف متغیرها و بستن پنجره ها استفاده شده است.
 </div> <br/>
   <div dir="ltr">
 
 ```
clc;
clear;
close all;
```
  </div>
  
<div dir="rtl">
    </br>

تصاویر ورودی را تعریف کرده و به کمک تابع rgb2gray تبدیل به تصویر خاکستری کرده و اندازه هرکدام را مشخص میکنیم.
با استفاده از شرط بررسی میکیم که اگر تصویر شعر کوچکتر از تصویر اصلی باشد چون زمینه عکس سفید است با اضافه کردن پیکسل های سفید تصویر را هم سایز تصویر اصلی میکنیم و اگر بزرگتر باشد تصویر شعر را تغییر سایز داده و هم سایز تصویر اصلی میکنیم.
  
  </br>
  
  <div dir="ltr">
  
  ```
orimg= imread("Fruits.jpg");
orimg=rgb2gray(orimg);
newImg = uint8(zeros(size(orimg)));
figure,imshow(uint8(orimg)),hold on
[row,col,chan] = size(orimg);

poem=imread("Poem.jpg");


[x1,y1,z1]= size(orimg);
[x2,y2,z2]= size(poem);
if (x2>x1)|(y2>y1)
 poem= imresize(poem,[x1,y1]);
elseif (x2<x1)|(y2<y1)
  poem(x2+x1-x2,y2+y1-y2)=255;
end  
  ```
  
  </br>
  
  ![GrayFruit](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/AtiKhosravani/18%20Steganography/GrayFruit.png)
  
  </div>
  
  </br>
با استفاده از تابع bitget، bitplane های مختلف تصویر را استخراج کرده و به نمایش در می آوریم.
  </br>  </br>
  
  <div dir="ltr">
  
  ```
doubled_orimage = double(orimg);

p1 = bitget(doubled_orimage,1);
p2 = bitget(doubled_orimage,2);
p3 = bitget(doubled_orimage,3);
p4 = bitget(doubled_orimage,4);
p5 = bitget(doubled_orimage,5);
p6 = bitget(doubled_orimage,6);
p7 = bitget(doubled_orimage,7);
p8 = bitget(doubled_orimage,8);

figure;
subplot(3,3,1); imshow(p1); title('Bitplane 1');
subplot(3,3,2); imshow(p2); title('Bitplane 2');
subplot(3,3,3); imshow(p3); title('Bitplane 3');
subplot(3,3,4); imshow(p4); title('Bitplane 4');
subplot(3,3,5); imshow(p5); title('Bitplane 5');
subplot(3,3,6); imshow(p6); title('Bitplane 6');
subplot(3,3,7); imshow(p7); title('Bitplane 7');
subplot(3,3,8); imshow(p8); title('Bitplane 8');

  ```
  
  </br>
  
  ![Bitplane](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/AtiKhosravani/18%20Steganography/Bitplane.png)
  
  </br>
  <div dir="rtl">
و در انتها تصویر را فشرده کرده و هیستوگرام آن را به وسیله تایع histeq به دست می آوریم.
  </br>
  </br>
  
  <div dir="ltr">
  
  ```
for i = 1:1:row
    for j = 1:1:col
        newImg(i,j) = bitand(orimg(i,j),240);
    end
end
figure, imshow(newImg);title('Compressed image');


doubled_orimage2 = double(orimg);

imbed = 4;
msgsft = bitshift(doubled_orimage,-(8-imbed));
show = uint8 (msgsft);
show = bitshift(show, 8-imbed);

inzero = doubled_orimage2;

for i = 1:imbed
    inzero = bitset(show,i,0);
end

inzero = double(inzero);
stgnimg = uint8(inzero + msgsft);
figure, imshow(stgnimg); title('Steganography of Images');
imwrite(stgnimg,'stgan.bmp');

figure;
subplot(3,1,1); imhist(orimg); title('Orginal picture Histogram');
subplot(3,1,2); imhist(stgnimg); title('Steganed picture Histogram');
subplot(3,1,3); imhist(histeq(orimg)); title('Equalized Histogram');

  ```
  
  </br>

  </div>
  
  ![Compressed](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/AtiKhosravani/18%20Steganography/Compressed.png)
  
  </br>
  
  ![Steganography](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/AtiKhosravani/18%20Steganography/Steganography.png)
  
  </br>
  
  نتیجه هیستوگرام به صورت زیر می باشد:
  </br>
    </br>
  
  ![Histograms](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/AtiKhosravani/18%20Steganography/Histograms.png)
  
  </div>
