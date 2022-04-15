## Half negative
##### برنامه ای بنویسید که نیمه ی بالایی یک تصویر را نگاتیو کند.
##### در ابتدا چند خط کد برای خواندن تصویر و تبدیل آن به تصویر خاکستری
```
clc;
close all;
clear;
image1= imread('sails.png');
image2=rgb2gray(image1);
figure,imshow(image2);
```
![gpa](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/benchmark/airplane.png)
