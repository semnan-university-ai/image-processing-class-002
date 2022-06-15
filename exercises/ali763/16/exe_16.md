
تمرین ۱۶
```
img=imread('peppers.png');
```
ابتدا تصویر را با دستور imread میخوانیم.
```
for i=1:size(img,1)
for j=1:size(img,2)
for z=1:size(img,3)
 % pixels between 0 to 50 
if img(i,j,z)<51 && img(i,j,z)>=0
if img(i,j,z)<=25
   img(i,j,z)=0;
else
   img(i,j,z)=51;
end
  % pixels between 51 to 101               
elseif img(i,j,z)<102 && img(i,j,z)>=51
if img(i,j,z)<=76
   img(i,j,z)=51;
else
   img(i,j,z)=102;
end
  % pixels between 102 to 152 
elseif img(i,j,z)<153 && img(i,j,z)>=102
if img(i,j,z)<=127
   img(i,j,z)=102;
else
   img(i,j,z)=153;
end   
 % pixels between 153 to 204                
elseif img(i,j,z)<204 && img(i,j,z)>=153 
if img(i,j,z)<=178
   img(i,j,z)=153;
else
   img(i,j,z)=204;
end
 % pixels between 205 to 254            
elseif img(i,j,z)>255 && img(i,j,z)>=204
if img(i,j,z)<=229
   img(i,j,z)=204;
else
   img(i,j,z)=255;
end
 % pixels equal 255            
else
   img(i,j,z)=255;
end           
end      
end
end
```
در کد فوق ابتدا تمام پیکسل‌های تصویر برای هر سطح R, G و B پیمایش شده و با در نظر گرفتن بازه های 0 تا 50, 51 تا 101, 102 تا 152, 153 تا 204, 205 تا 254 و 255 پیکسل‌های حاصل با توجه به مقدار
آن با یکی از دو سوی آستانه(همسایگی) هر بازه جایگذاری می‌شود. برای مثال در بازه 0 تا 50, پیکسل 0 تا 27، با عدد 0 و پیکسل 28 تا 50 با 51 (همسایه پیکسل 50) جایگذاری می‌شود.
```
figure, imshow(image);
```
خروجی:

![fig7](https://user-images.githubusercontent.com/56272972/167225524-d8084f09-d61e-46e1-8362-018766b8be55.jpg)

