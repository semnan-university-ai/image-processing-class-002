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
![gpa](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc04/fig1.4.png)
##### حال سایز تصویر خاکستری را یافتیم.سپس برای یافتن تصویر نگاتیو یعنی تصویر جدید مقادیر تصویر اصلی از سطر 1 تا نصف سطر را از 255 کم کرده و در تصویر جدید جایگذاری میکنیم.بقیه مقادیر از نصف سطر تا پایان سطر را همان مقادیر تصویر اصلی می گذاریم.
```
[m,n]=size(image2);
for i=1:m
    for j=1:n
        if i < m/2
            image3(i,j) =255-image2(i,j);
        else
            image3(i,j)= image2(i,j);
        end
    end
end
```
##### در پایان نمایش تصویر نیمه نگاتیو شده را نمایش می دهیم.
![gpa](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc04/fig2.4.png)

