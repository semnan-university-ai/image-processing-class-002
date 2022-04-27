## روی تصاویر سفره هفت سین خود عملیات بهینه سازی هیستوگرام را انجام دهید و خروجی هر یک را در کنار ورودی اصلی آن قرار دهید. (ابتدا تصویر خاکستری شود.)

### توضیح قسمت های کد:
1. جهت اجرای بهتر کدها در متلب، بهتر است دستورات clc,clean,close در ابتدای هر برنامه نوشته شود. سپس تصوير را خوانده و آن را خاكستري مي كنيم.
2. سپس هموار سازی یا بهینه سازی هیستوگرام را بر روی تصویراعمال نموده و آن را در قالب تصویر جدید ذخیره می کنیم .
3. در نهایت تصویر اصلی و تصویر نتیجه را نمایش می دهیم .

```
clc;
clear;
close all;

img1 = imread('/Users/s.ali.motavally/Desktop/tamrin7/1.jpg');
img1 = rgb2gray(img1);
heq1 = histeq(img1);
figure;
subplot(1,2,1);imshow(img1);
subplot(1,2,2);imshow(heq1);


img2 = imread('/Users/s.ali.motavally/Desktop/tamrin7/2.jpg');
img2 = rgb2gray(img2);
heq2 = histeq(img2);
figure;
subplot(1,2,1);imshow(img2);
subplot(1,2,2);imshow(heq2);


img3 = imread('/Users/s.ali.motavally/Desktop/tamrin7/3.jpg');
img3 = rgb2gray(img3);
heq3 = histeq(img3);
figure;
subplot(1,2,1);imshow(img3);
subplot(1,2,2);imshow(heq3);

img4 = imread('/Users/s.ali.motavally/Desktop/tamrin7/4.jpg');
img4 = rgb2gray(img4);
heq4 = histeq(img4);
figure;
subplot(1,2,1);imshow(img4);
subplot(1,2,2);imshow(heq4);


img5 = imread('/Users/s.ali.motavally/Desktop/tamrin7/5.jpg');
img5 = rgb2gray(img5);
heq5 = histeq(img5);
figure;
subplot(1,2,1);imshow(img5);
subplot(1,2,2);imshow(heq5);


img6= imread('/Users/s.ali.motavally/Desktop/tamrin7/6.jpg');
img6 = rgb2gray(img6);
heq6 = histeq(img6);
figure;
subplot(1,2,1);imshow(img6);
subplot(1,2,2);imshow(heq6);


img7= imread('/Users/s.ali.motavally/Desktop/tamrin7/7.jpg');
img7 = rgb2gray(img7);
heq7 = histeq(img7);
figure;
subplot(1,2,1);imshow(img7);
subplot(1,2,2);imshow(heq7);


img8= imread('/Users/s.ali.motavally/Desktop/tamrin7/8.jpg');
img8 = rgb2gray(img8);
heq8 = histeq(img8);
figure;
subplot(1,2,1);imshow(img8);
subplot(1,2,2);imshow(heq8);


img9= imread('/Users/s.ali.motavally/Desktop/tamrin7/9.jpg');
img9 = rgb2gray(img9);
heq9 = histeq(img9);
figure;
subplot(1,2,1);imshow(img9);
subplot(1,2,2);imshow(heq9);


img10= imread('/Users/s.ali.motavally/Desktop/tamrin7/10.jpg');
img10 = rgb2gray(img10);
heq10 = histeq(img10);
figure;
subplot(1,2,1);imshow(img10);
subplot(1,2,2);imshow(heq10);


img11= imread('/Users/s.ali.motavally/Desktop/tamrin7/11.jpg');
img11 = rgb2gray(img11);
heq11 = histeq(img11);
figure;
subplot(1,2,1);imshow(img11);
subplot(1,2,2);imshow(heq11);


img12= imread('/Users/s.ali.motavally/Desktop/tamrin7/12.jpg');
img12 = rgb2gray(img12);
heq12 = histeq(img12);
figure;
subplot(1,2,1);imshow(img12);
subplot(1,2,2);imshow(heq12);
```

## خروجی:

خروجی1:
![im1](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin12/1.jpg)
خروجی2:
![im2](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin12/2.jpg)
خروجی3:
![im3](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin12/3.jpg)
خروجی4:
![im4](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin12/4.jpg)
خروجی5:
![im5](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin12/5.jpg)
خروجی6:
![im6](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin12/6.jpg)
خروجی7:
![im7](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin12/7.jpg)
خروجی8:
![im8](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin12/8.jpg)
خروجی9:
![im9](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin12/9.jpg)
خروجی10:
![im10](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin12/10.jpg)
خروجی11:
![im11](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin12/11.jpg)
خروجی12:
![im12](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/alimotavally/tamrin12/12.jpg)
