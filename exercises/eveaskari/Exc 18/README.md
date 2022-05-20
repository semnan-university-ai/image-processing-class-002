<div dir="rtl">
  
  ### | مخفی کردن متن در تصاویر و اعمال تغییرات بر روی هیستوگرام تصاویر | یک تصویر به عنوان ورودی اصلی در نظر گرفته شود. در تصویر ورودی، 8 Bit plane استخراج گردد و خروجی آن نمایش داده شود. یک تصویر شامل یک بیت شعر را به عنوان ورودی دوم لحاظ کنید. تصویر ورودی دوم را در تصویر اصلی مخفی کنید و روش مخفی کردن خود را توضیح دهید. در صورت تفاوت ابعاد دو تصویر، چه عملی باید انجام بگیرد؟ ایده شما برای کاهش حجم تصاویر ورودی براساس Bit plane چیست؟ در صورت امکان¬پذیر بودن این امر، تصویر اصلی ورودی را کاهش حجم دهید. هیستوگرام تصویر اصلی و تصویر دوم را نمایش دهید. دلیل تفاوت هیستوگرام¬های خروجی چیست؟ آیا امکان افزایش کنتراست در دو تصویر وجود دارد؟ هیستوگرام دو تصویر را هموارسازی کرده و خروجی را نمایش دهید. دو تصویر به عنوان نمونه در ضمیمه این فایل قرار داده شده است. در صورتی که سوالی در مورد هر بند از این پروژه داشته باشید می¬توانید سوالات خود را از طریق کانال تلگرامی بپرسید. (در پوشه ی کلاس با نام Lenna.png و text.jpg)
  
  
  <br/>
  الف) برای کل مراحل این تمرین ما از دو تابع استفاده کرده ایم: اول تابع تغییر سایز و دوم تابع مخفی کردن تصویر.
  <br/>
  برای تابع اول از ما پرسیده شده که اگر ابعاد دو تصویر متفاوت باشد ، باید چه کرد؟ می توان ابعاد دو تصویر را گرفته و آنها را تغییر سایز داد. حال این تغییر سایز میتواند به دو صورت باشد روش اول با گذاشتن یک شرط میتوان مقایسه کرد کدام تصویر کوچکتر است و هردو را به ابعاد تصویر کوچک تغییر داد، این کار باعث کاهش حجم نیز می شود و یا کوچکترین بعد از تصاویر را گرفته و تمام تصاویر را به کوچکترین بعد به صورت مربعی تغییر داد.
  <br/>
  روش دوم این است که بدون توجه به اندازه های تصاویر چون میخواهیم یک تصویر را در تصویر دیگر پنهان کنیم ، همان تصویر اصلی را به عنوان مرجع انتخاب کرده و تصویری که قرار است پنهان شود را با آن یک سایز کنیم:
  
  <div dir="ltr">
    
    
  the first way:
    
    ```
    function [input1, input2] = changesize(input1,input2)

    input1 = imread(input1);
    input2 = imread(input2);
    [x, y] = size(input1);
    [w ,z] = size(input2);

    if x<w && y<z
        input2 = imresize(input2, [x ,y]);
        input1 = imresize(input1, [x, y]);
    else
        input1 = imresize(input1, [w ,z]);
        input2 = imresize(input2, [w, z]);
    end
    end
    ```
 ------------------------------------------------------------------------------------------------------------------------
    
    ```
    function [input1, input2] = changesize(input1,input2)

    input1 = imread(input1);
    input2 = imread(input2);
    [x, y] = size(input1);
    [w ,z] = size(input2);

    A = [x, y, w, z];
    M = min(A);

    input2 = imresize(input2, [M ,M]);
    input1 = imresize(input1, [M, M]);
    end
    ```
    
    <br/>
    
the second way:
  
    ```
    function [input1, input2] = changesize(input1,input2)

    input1 = imread(input1);
    input2 = imread(input2);
    [x, y] = size(input1);
    %[w ,z] = size(input2);


    input2 = imresize(input2, [x ,y]);
    input1 = imresize(input1, [x, y]);
    end
    ```
    
    
  </div>
  
  در اینجا ما از روش دوم استفاده کرده ایم.
  <br/>
  تابع دوم تابعی برای انجام عملیات استگانوگرافی می باشد. در این تابع ابتدا تابع تغییر سایز فراخوانی میشود و ورودی ها گرفته میشود. سپس تمامی 8 بیت صفحات استخراج میشود و سپس  در یک صفحه نمایش داده میشود. روش مخفی کردن ما بشتر به MSB  شباهت دارد زیرا که به جای استفاده از کم ارزش ترین بیت ها به سراغ با ارزش ترین بیت ها می رود. متغیر imbed نیز شماره بیتی که قرار است در جاگذاری از آن استفاده شود را مشخص میکند.
  
  <br/>
  با شیفت دادن به راست بیت مورد نظر را در موقعیتی که قرار است جایگزین شود قرار می دهیم سپس با استفاده از یک حلقه عملیات جایگزاری را انجام می دهیم.
  <br/>
  و در انتها مقادیر را با هم ادغام می کنیم.
  
  
  <div dir="ltr">
 
```    
function [input1, input2] = Stegano(input1, input2)

[input1, input2] = changesize(input1, input2);

indub = double(input1);

p1 = bitget(indub,1);
p2 = bitget(indub,2);
p3 = bitget(indub,3);
p4 = bitget(indub,4);
p5 = bitget(indub,5);
p6 = bitget(indub,6);
p7 = bitget(indub,7);
p8 = bitget(indub,8);

figure;
subplot(3,3,1); imshow(p1); title('Bitplane1');
subplot(3,3,2); imshow(p2); title('Bitplane2');
subplot(3,3,3); imshow(p3); title('Bitplane3');
subplot(3,3,4); imshow(p4); title('Bitplane4');
subplot(3,3,5); imshow(p5); title('Bitplane5');
subplot(3,3,6); imshow(p6); title('Bitplane6');
subplot(3,3,7); imshow(p7); title('Bitplane7');
subplot(3,3,8); imshow(p8); title('Bitplane8');

indub2 = double(input2);
figure, imshowpair(input1,input2, 'montage');


imbed = 4;
msgsft = bitshift(indub,-(8-imbed));
showmsg = uint8 (msgsft);
showmsg = bitshift(showmsg, 8-imbed);

inzero = indub2;

for i = 1:imbed
    inzero = bitset(showmsg,i,0);
end

inz = double(inzero);
stgan = uint8(inz + msgsft);
figure, imshow(stgan); title('steganography of images');
imwrite(stgan,'stgan.bmp');

figure;
subplot(2,2,1); imhist(input1); title('histogram of input image');
subplot(2,2,2); imhist(stgan); title('histogram of steganed image');
subplot(2,2,3); imhist(histeq(input1)); title('equ histogram of input image');
subplot(2,2,4); imhist(histeq(stgan)); title('equ histogram of steganed image');
end
```
  
  </div>
  
  <br/>
  حال تابع اصلی را فراخوانی می کنیم و تصاویر اصلی و مخفی را به آن می دهیم و نتایج را مشاهده می کنیم:
  <br/>
  <br/>
  <div dir="ltr">
    
  ```
  clc;
  close all;
  clear;

  [input1, input2] = changesize('MATLAB/serrano.png', 'MATLAB/Poem.jpg');
  ```  
  
 ### input1 = cover and input2 = message
| cover   |    message|
| --------------------------------------------------|------------------------------------------------|   
| ![cover](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2018/serrano.png)| ![msg](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2018/Poem.jpg)|
    
 ### 8-bit - plane
    
 ![8-bit](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2018/bit-8.JPG)
    
 ### Steganography of inputs
    
 ![stegan](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2018/steg.JPG)
    
 ### Histograms And Equalized histograms
    
 ![hist](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2018/hist.JPG)
    
    
  </div>
  <br/>
  دلیل تفاوت هیستوگرام ها این است که مقادیر آنها تقریبا تغییر کرده است . درست است که این تغییرات با چشم قابل ملاحضه نیستند ولی به طور کامل در هیستوگرام آنها تغییرات قابل مشاهده می باشد. همانطور که می بینید هیستوگرام ها بعد از هموار سازی تغییر کرده اند. و همین امر نشان دهنده تغییر کنتراست در تصاویر نهایی می باشد. 
  <br/>
  
</div>
