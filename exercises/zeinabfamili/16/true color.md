## تصویر رنگی را به حالت True color ببرید و در تبدیل خود مقدار پیکسل را به مقدار نزدیک آن در True Color میل دهید.
##### ابتدا با کدهای زیر تصویر را خوانده و سایز تصویر را می یابیم.
```
clc;
close all;
clear;
image = imread('fruits.png');
[m,n,r] = size(image);
```
##### تصویراصلی را ابتدا به ماتریس تصویر دیگری بنام timage انتقال می دهیم.
```
timage = image;
```

##### حال با توجه به مفهوم تصاویر true color باید مقادیر تصویر به عددهای 0 و51و 102و 153و 204و 255 محدود شوند. مقادیر پیکسل ها را بازه بازه کرده و مقدار هر بازه
##### به یک عدد به صورت زیر اختصاص می دهیم.
```
for i= 1:m
    for j = 1:n
        for k =1:r
            if  timage(i,j,k) < 51 && timage(i,j,k) > -1
                if timage(i,j,k) >= 26
                    timage(i,j,k) = 51;
                else
                    timage(i,j,k) = 0;
                end
            elseif  timage(i,j,k) < 102 
                if timage(i,j,k) >= 77
                    timage(i,j,k) = 102;
                else
                    timage(i,j,k) = 52;
                end
            elseif timage(i,j,k) < 153
                if timage(i,j,k) >= 128
                     timage(i,j,k) = 153;
                else 
                    timage(i,j,k) = 104; 
                end
            elseif timage(i,j,k) < 204
                if timage(i,j,k) >= 179
                     timage(i,j,k) = 204;
                else 
                    timage(i,j,k) = 155; 
                end
                elseif timage(i,j,k) < 255
                if timage(i,j,k) >= 230
                     timage(i,j,k) = 255;
                else 
                    timage(i,j,k) = 206; 
                end
            end
        end
    end
end
```
##### در پایان تصویر اصلی و نصویر نهایی را با کدهای زیر نمایش می دهیم.
```
figure;
subplot(1,2,1),imshow(uint8(image));title ('orginal image');
subplot(1,2,2),imshow(uint8(timage));title ('truecolor image');
```
![truecolor]([https://user-images.githubusercontent.com/94124607/167182697-40a10bef-ac09-4760-a2ab-acd9c26bc35b.png](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/16/fig%2016.jpg))
```
