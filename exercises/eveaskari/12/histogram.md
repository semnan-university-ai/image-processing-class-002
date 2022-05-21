<div dir="rtl">
 
### روی تصاویر سفره هفت سین خود عملیات بهینه سازی هیستوگرام را انجام دهید و خروجی هر یک را در کنار ورودی اصلی آن قرار دهید. (ابتدا تصویر خاکستری شود.)
 
</br>
</br>
 برای اینکار ابتدا تصاویر را به خاکستری تبدیل میکنیم :

<div dir="ltr">

```
clc;
close all;
clear;

img1 = rgb2gray(imread("data 7 sin/08.jpeg"));
img2 = rgb2gray(imread("data 7 sin/09.jpeg"));
img3 = rgb2gray(imread("data 7 sin/10.jpeg"));
img4 = rgb2gray(imread("data 7 sin/12.jpeg"));
img5 = rgb2gray(imread("data 7 sin/14.jpeg"));
img6 = rgb2gray(imread("data 7 sin/15.jpeg"));
img7 = rgb2gray(imread("data 7 sin/16.jpeg"));
img8 = rgb2gray(imread("data 7 sin/19.jpeg"));
img9 = rgb2gray(imread("data 7 sin/20.jpeg"));
img10 = rgb2gray(imread("data 7 sin/21.jpeg"));
img11 = rgb2gray(imread("data 7 sin/22.jpeg"));
img12 = rgb2gray(imread("data 7 sin/23.jpeg"));
```

</div>

</br>
حال برای هر کدام هیستوگرام مربوط تصاویر قبل و بعد از نرمال سازی را رسم مینماییم:

<div dir="ltr">

```
figure, imhist(img1);  %showing the histogram of source img
figure, imshow(histeq(img1));   %equalizing the picture
figure, imhist(histeq(img1));   %showing the equalized histogram
```

</div>

برای نشان دادن خروجی ها کنار هم می توان از کد زیر هم استفاده کرد: 

<div dir="ltr">

```
histimg1 = imhist(img1);
eqimg1 = histeq(img1);
eqhist =  imhist(histeq(img1)); 
figure, imshowpair(img1,eqimg1,'montage');
figure, imshowpair(eqhist,histimg1,'montage');
```

</div>

ولی در اینجا ما از جدول استفاده کردیم چون خروجی را جدا جدا نمایش داده ایم.
</div>

|  Source |  Equalized |
|---|---|
|![08](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/08.JPG) |  ![e8](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/e8.JPG)|
|![h8](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/h8.JPG) | ![eh8](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/eh8.JPG)|
|![09](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/09.JPG) | ![e9](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/e9.JPG)|
|![h9](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/h9.JPG) | ![eh9](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/eh9.JPG)|
|![10](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/10.JPG) | ![e10](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/e10.JPG)|
|![h10](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/h10.JPG) | ![eh10](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/eh10.JPG)|
|![12](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/12.JPG) | ![e12](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/e12.JPG)|
|![h12](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/h12.JPG) | ![eh12](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/eh12.JPG)|
|![14](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/14.JPG) | ![e14](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/e14.JPG)|
|![h14](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/h14.JPG) | ![eh14](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/eh14.JPG)|
|![15](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/15.JPG) | ![e15](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/e15.JPG)|
|![h15](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/h15.JPG) | ![eh15](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/eh15.JPG)|
|![16](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/16.JPG) | ![e16](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/e16.JPG)|
|![h16](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/h16.JPG) | ![eh16](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/eh16.JPG)|
|![19](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/19.JPG) | ![e19](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/e19.JPG)|
|![h19](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/h19.JPG) | ![eh19](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/eh19.JPG)|
|![20](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/20.JPG) | ![e20](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/e20.JPG)|
|![h20](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/h20.JPG) | ![eh20](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/eh20.JPG)|
|![21](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/21.JPG) | ![e21](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/e21.JPG)|
|![h21](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/h21.JPG) | ![eh21](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/eh21.JPG)|
|![22](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/22.JPG) | ![e22](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/e22.JPG)|
|![h22](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/h22.JPG) | ![eh22](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/eh22.JPG)|
|![23](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/23.JPG) | ![e23](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/e23.JPG)|
|![h23](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/h23.JPG) | ![eh23](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2012/eh23.JPG)|
