**تمرین 15**
<br>
ابتدا تصویر را با دستور imread میخوانیم.
<br>
```
clc,clear,close
img= imread("peppers.png");
```
تمام درایه های طول و عرض تصویر برای هر سطح تصویر R , G و B را پیموده و در عدد متناظر با آن ضرب میکنیم، مجموع حاصل ضرب ها را محاسبه کرده و حاصل را به جای درایه های طول و عرض تصویر قرار میدهیم. 
```
for i=1:size(img,1);
    j=1:size(img,2);
    im(i,j)=(img(i,j,1)*(0.299)+img(i,j,2)*(0.587)+img(i,j,3)*(0.114));
end
```
نتایج به صورت زیر رسم میشود.
```
subplot(2,1,1)
imshow(img)
title('RGB');
subplot(2,1,2)
imshow(im)
title('gray scale');

```
خروجی به صورت زیر خواهد بود :
<br>

![fig6](https://user-images.githubusercontent.com/56272972/167206074-1e590388-c016-4ec9-963b-656431a9386f.jpg)
