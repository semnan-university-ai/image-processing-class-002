### Exercise 16
```
clc;
close all;
clear;

img = imread("fruit.jfif ");
[x,y,~] = size(img);
figure, imshow(img);

for i = 1 : x
    for j = 1 : y
        for k = 1 : 3
            
            if img(i, j, k) < 51 && img(i, j, k) > -1
                if img(i, j, k) < 51/2
                    img(i, j, k) = 0;
                else
                    img(i, j, k) = 51;
                end

            elseif img(i, j, k) < 102 && img(i, j, k) >= 51
                if img(i, j, k) < (102-51)/2
                    img(i, j, k) = 51 ;
                else
                    img(i, j, k) = 102 ;
                end

            elseif img(i, j, k) < 153 && img(i, j, k) >= 102
                if img(i, j, k) < (153-102)/2
                    img(i, j, k) = 102 ;
                else
                    img(i, j, k) = 153 ;
                end
                
            elseif img(i, j, k) < 204 && img(i, j, k) >= 153 
                if img(i, j, k) < (204-153)/2
                    img(i, j, k) = 153 ;
                else
                    img(i, j, k) = 204 ;
                end

            elseif img(i, j, k) < 255 && img(i, j, k) >= 204
                if img(i, j, k) < (255-204)/2
                    img(i, j, k) = 204 ;
                else
                    img(i, j, k) = 255 ;
                end

            else
                img(i, j, k) = 255 ;
            end
        end
    end
end

figure, imshow(img);
imwrite(img,'My Image.jpg')
```
#### بررسی کد :
جهت اجرای بهتر کدها در متلب، بهتر است سه دستور اول در ابتدای هر برنامه نوشته شود. 
<br/>
در ادامه تصویر رنگی خود را خوانده ، نمایش داده و سایز آن را نیز در متغیری نگه می داریم.
```
clc;
clear;
close all;
img = imread("fruit.jfif ");
figure, imshow(img);
[x,y,~] = size(img);
```
##### تصویر اصلی :

![RGBimage](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/16/fruit.jfif)

حال قصد داریم تصویر رنگی را به حالت True color ببریم.
در کلاس حل تمرین نمونه ای از آن را دیدیم ولی برای اینکه به تصویر واقعی نزدیکتر باشد میخواهیم کار روی بازه ها را کمی دقیق تر پیش ببریم.
<br/>
برای این کار کافیست با دستورات شرطی زیر جلو برویم.
 
```
for i = 1 : x
    for j = 1 : y
        for k = 1 : 3
            
            if img(i, j, k) < 51 && img(i, j, k) > -1
                if img(i, j, k) < 51/2
                    img(i, j, k) = 0;
                else
                    img(i, j, k) = 51;
                end

            elseif img(i, j, k) < 102 && img(i, j, k) >= 51
                if img(i, j, k) < (102-51)/2
                    img(i, j, k) = 51 ;
                else
                    img(i, j, k) = 102 ;
                end

            elseif img(i, j, k) < 153 && img(i, j, k) >= 102
                if img(i, j, k) < (153-102)/2
                    img(i, j, k) = 102 ;
                else
                    img(i, j, k) = 153 ;
                end
                
            elseif img(i, j, k) < 204 && img(i, j, k) >= 153 
                if img(i, j, k) < (204-153)/2
                    img(i, j, k) = 153 ;
                else
                    img(i, j, k) = 204 ;
                end

            elseif img(i, j, k) < 255 && img(i, j, k) >= 204
                if img(i, j, k) < (255-204)/2
                    img(i, j, k) = 204 ;
                else
                    img(i, j, k) = 255 ;
                end

            else
                img(i, j, k) = 255 ;
            end
        end
    end
end
```
در دستورات بالا ، روند بدین صورت است که مقادیر پیکسل ها را در هر بازه بررسی می کنیم . اگر مقدار آن از نصف حد بالای بازه کمتر باشد به پایین گرد می شود 
در غیر این صورت به بالا رند می شود.
<br/>
در نهایت تصویرنهایی را نمایش داده و در قالب تصویر جدیدی به نام My Image ذخیره می کنیم .
```
figure, imshow(img);
imwrite(img,'My Image.jpg')
```
##### تصویر نتیجه :

![TrueColorImag](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/16/My%20Image.jpg)
