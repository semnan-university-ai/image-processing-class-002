**سوال 17**
<br>
ابتدا تصویر را میخوانیم و سپس ابعاد اولیه جهت crop کردن تصویر و ایجاد تصویر جدید را تعیین میکنیم :
<br>
```
img = imread('cameraman.tif');
x1=1;
x2=150;
y1=1;
y2=200;
```

سپس این ابعاد اولیه تعیین شده را روی تصویر اصلی اعمال میکنیم تا تصویر جدید حاصل گردد و با دستور imshowpair خروجی که همان تصویر crop شده است را نمایش میدهیم: 
 <br>
 ```
 croped_img = img(x1:x2,y1:y2);
imshowpair(i,img,'montage')
 ```
![WhatsApp Image 2022-05-21 at 3 51 20 AM](https://user-images.githubusercontent.com/56272972/169624083-66995771-27db-46e4-a604-fe54878a9fbe.jpeg)




