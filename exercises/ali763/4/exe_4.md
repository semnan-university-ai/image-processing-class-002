**سوال 4**
تصویر اصلی را خوانده و (در صورت نیاز آن را به یک تصویر خاکستری تبدیل میکنیم) :
```
image = imread('cameraman.tif');
```
یک حلقه for  تو در تو تمام پیکسل های نیمه بالای تصویر را خوانده(size(image,1)/2) و مقدار هر یک را از ۲۵۵ کم می کند.
```
for i = 1 : size(image,1)/2
    for j = 1: size(image,2)
           image(i,j) = 255 - image(i,j);        
    end
end
```
تصویر حاصل را رسم می کنیم :
```
figure
imshow(image)
```

خروجی :
<br>
![image](https://user-images.githubusercontent.com/56272972/163609060-fa018865-8e0c-4106-a3a9-0c02576b60d5.png)
