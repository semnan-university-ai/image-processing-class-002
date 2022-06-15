<div dir="rtl">
  
  ### کدی بنویسید که با توابع یادگرفته شده در درس پردازش تصویر خط های دفتری که در آن نقاشی شده است را حذف کند.
  
  </br>
  برای این برنامه ما از 3 روش استفاده میکنیم : فیلتر ها در حوزه مکان - مورفولوژی - فیلتر در حوزه فرکانس.
  </br>
  از فیلتر هایی مکانی که برای این کار استفاده کرده ایم ؛ فیلتر میانه و میانگین ؛ فیلتر میانه به مراتب نتایج بهتری را داشته است. در این فیلتر از پنجره همسایگی 11*11 استفاده شده است . پنجره کوچکتر خط ها را باقی گذاشته و پنجره بزرگتر تصویر را خیلی محو می کند.
  </br>
  
  فیلتر میانگینی که در نظر گرفته ایم از پنجره 7 * 7 استفاده کردیم . با این حال نتیجه مناسبی نداشتیم زیرا فیلتر با سایز بزرگتر باعث از بین رفتن تصاویر می شد.
  </br>
  برای مورفولوژی ما از عملگر های dilation و erosion  استفاده کرده ایم. بطوری که در ابتدا یک عمل erosion با المان خطی به اندازه 3 و 180 درجه انجام دادیم ، سپس به طور متوالی دو عمل dilation با المان خطی : اول اندازه 1 و 180 درجه ؛ دوم اندازه2 و 90 درجه ؛ انجام دادیم و به نتایج خوبی رسیدیم.
  </br>
  و در نهایت در حوزه فرکانس فیلتری ساختیم و بر روی دامنه تصویر انداختیم بطوری که خط عمود بر خطوط دفتر را حذف می کند.
  </br>
  تمام این توابع را برای تصاویر متفاوت تست مینمیم. در این گزارش فقط برای یک تویر را میگذاریم، باقی تصاویر تست شده و نتایجشان در پوشه result می باشد . کد ها و نتایج به صورت زیر می باشد:
  </br>
  
  <div dir="ltr">
  
  ### The Main Code :
  
```
clc;
close all;
clear;

mean("paint/fish.jpeg");
newmed7("paint/fish.jpeg");
morpho_line('paint/fish.jpeg');
fft_paint('paint/fish.jpeg');

mean("paint/face.jpeg");
newmed7("paint/face.jpeg");
morpho_line('paint/face.jpeg');
fft_paint('paint/face.jpeg');

mean("paint/moon.jpeg");
newmed7("paint/moon.jpeg");
morpho_line('paint/moon.jpeg');
fft_paint('paint/moon.jpeg');

mean("paint/bts.jpeg");
newmed7("paint/bts.jpeg");
morpho_line('paint/bts.jpeg');
fft_paint('paint/bts.jpeg');
```
  
 </br>
 
  ### Mean
  
  </br>
  
```
function new = mean(img)
    filter_size = 7;  %7
    pading = (filter_size - 1)/2;
    img = rgb2gray(imread(img));
    %img = imread(img);
    res_img = img;
    [x ,y]=size(img);
    for i=1+pading:x-pading
        for j=1+pading:y-pading
            new = img(i-pading:i+pading, j-pading:j+pading);
            new = sum(new(:));
            res_img(i,j)= ceil(new/49);
        end
    end
    figure('Name', 'mean'), subplot(1,2,1),imshow(img),title('original image');
    subplot(1,2,2),imshow(res_img),title('noline image');
end
```
  
  </br>
  
  #### windows size 7 * 7
  
  ![btsmean7](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Extra/paint/result/btsmean7.JPG)

  #### windows size 9 * 9
  
  ![btsmean9](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Extra/paint/result/btsmean9.JPG)
  
  </br>
  
  ### Median
  
  </br>
  
```
function med = newmed7(img)
    img = rgb2gray(imread(img));
    %img = imread(img);
    med = medfilt2(img, [11 11], 'symmetric');
    figure('Name', 'median'), subplot(1,2,1),imshow(img),title('original image');
    subplot(1,2,2),imshow(med),title('noline image');
end
```
  
  </br>
  
  ![btsmed](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Extra/paint/result/btsmed.JPG)
  
  </br>
  
  ### Morphology
  
  </br>
  
```
function [] = morpho_line(img)

img = rgb2gray(imread(img));

SEd1 = strel('line',1,180);
SEe = strel('line',3,180);
SEd2 = strel('line',2,90);

imgers = imerode(img,SEe);
imgdil = imdilate(imgers,SEd1);
imgdil = imdilate(imgdil,SEd2);

noline = medfilt2(imgdil, [5 5], 'symmetric');
figure('Name', 'morpho_line'), subplot(1,2,1),imshow(img),title('original image');
subplot(1,2,2), imshow(noline),title('noline image');

end
```
  
  </br>
  
  ![btsmor](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Extra/paint/result/btsmor.JPG)
  
  </br>
  
  ### FFT
  
  </br>
  
```
function [] = fft_paint(img)

img = imread(img);

img_s = size(img);
temp = size(img_s);
if (temp(2)>2)
    img = rgb2gray(img);
end

mm = fft2(double(img));
mms = fftshift(mm);

main = log10(1+abs(mms));
phase = angle(mms);

figure('Name', 'Part 1', 'NumberTitle', 'off', 'MenuBar', 'none');
colormap('gray');
subplot(2,2,1);
imagesc(img);
title('Original Image');

subplot(2,2,2);
imagesc(main);
title('Log Maganitude of FFT of');
	
subplot(2,2,3);
imagesc(phase);
title('Phase of FFT');
	
%mms(1:img_s(1,1), img_s(1,2)/2-10:img_s(1,2)/2+10) = 0;
%mms(img_s(1,1)/2-10:img_s(1,1)/2+10 , 1:img_s(1,2)) = 0;

for i = 1 : img_s(1)
    if (i > round(img_s(1)/2-20) && i < round(img_s(1)/2+20))
        continue;
    end
    for j = round(img_s(2)/2-4) : round(img_s(2)/2+4)
        mms(i,j) = 0;
    end
end

noline = ifft2(ifftshift(mms));


mm = fft2(noline);
mms = fftshift(mm);

subplot(2,2,4);
mms = log(1+ abs(mms));
imagesc(mms)

figure('Name', 'fft_paint'), imshow(uint8(noline)),title('noline image');

end
```
  
  </br>
  
  ![bts4](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Extra/paint/result/bts4.JPG)
  
  ![bts5](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Extra/paint/result/bts5.JPG)
  
  </br>
    
  </div>
  
  </div>
