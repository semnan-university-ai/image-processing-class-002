
**سوال 2**
<br>
ابتدا تصویر را می خوانیم و چون تصویر رنگی است آن را با استفاده از دستور موجود در متلب به سطح خاکستری تبدیل می نماییم که داریم :
**تصویر اصلی **<br>
![baboon](https://user-images.githubusercontent.com/94124607/163383820-0c2e578f-368f-4194-8799-f529035a96e1.png)<br>
```
img = imread('baboon.png');
img = rgb2gray(img);
figure, imshow(img);
```
سپس یک پدینگ 5 در 5 به اطراف تصویر اضافه می نماییم  :

```
pad1 = padarray(img,[5 5],'replicate','both');
```
و بعد هم تصویر حاصل را نمایش می دهیم :
```
figure, imshow(pad1);
```
**تصویر خروجی **
![pad_out](https://user-images.githubusercontent.com/94124607/163384450-7b2d400b-2cae-49e3-b8bc-7117a83da503.png)<br>
