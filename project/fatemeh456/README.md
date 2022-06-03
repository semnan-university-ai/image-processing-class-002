## Project
#### می خواهیم برنامه ای را بنویسیم که ارزش اسکناس های رنگی را تشخیص دهد.
ابتدا در کنار فایل برنامه خود پوشه ای به نام img می سازیم و تصاویر اسکناس ها را در آن قرار می دهیم .
<br/>
از آنجا که قرار است همچون شبکه های عصبی، ابتدا با تعدادی تصویر مدل خود را آموزش داده سپس با تصاویری دیگر تست کنیم پس
دو پوشه به نام های Train و Test ساخته و درون آن را تعداد تصویر اسکناس قرار می دهیم.
<br/>
دقت کنید که نام تصاویر پوشه Train باید ارزش آن اسکناس را مشخص نماید اما تصاویر Test ما نیازی به این کار ندارند . دقیقا انگار به صورت با نظارت 
قرار است مدلی را آموزش دهیم.
<br/>
حال وارد مرحله اصلی یعنی کدنویسی می شویم.
<br/>
## Train
در این مرحله با تعریف تابع قرار است فرایند Train را انجام دهیم.
```
function [ test_data_number, test_data_names ] = train()
```
ابتدا مسیر داده های Train خود را در پارامتری به نام Path نگه می داریم . سپس تمامی تصاویر درون آن را در متغیری به نام images ریخته و طول
آن را در متغیر count میریزیم.
```
path  = '../img/train/';
images = dir(strcat(path, '*.jpg'));
count = length(images);
```
حالا ماتریسی با تعداد سطری برابر تعداد تصاویر Train و تعداد ستونی برابر با تعداد کانال های تصویر (چون رنگی است = 3 خواهد بود) ایجاد می کنیم
و مقادیر اولیه آن را صفر قرار می دهیم .
<br/>
حالا به کمک یک حلقه for، به ازای تک تک تصاویر موجود در پوشه Train، میانگین مقادیر مقادیر هر کانال از تصویر را به صورت جداگانه به کمک تابعی به نام rgbAvg محاسبه نموده 
و در سه متغیر r , g , b ذخیره می کنیم.
 <br/>
تابع rgbAvg را به صورت زیر نوشتیم :
```
function [r, g, b] = rgbAvg(image)

    image_size = size(image);

    img_R = 0;
    img_G = 0;
    img_B = 0;

    k = 1;
    for i = 1 : image_size(1)
        for j = 1 : image_size(2)
            img_R = img_R + double(image(i, j, 1));
            img_G = img_G + double(image(i, j, 2));
            img_B = img_B + double(image(i, j, 3));
            k = k + 1;
        end
    end

    r = img_R / k;
    g = img_G / k;
    b = img_B / k;

end
```
به ازای هر تصویر 3 مقدار به دست می آوریم و جمعا همه مقادیر همه تصاویر را در ماتریس test_data_number دخیره می کنیم.
<br/>
در ادامه ماتریس test_data_name را داریم که برچسب تصاویر را در آن نگه می داریم .
```
test_data_number = zeros(count, 3);
test_data_name = '';

for i = 1 : count
	image_file      = images(i).name;
	image           = imread(strcat(path, image_file));
	[r, g, b] = rgbAvg(image);
	test_data_number(i, 1) = r;
	test_data_number(i, 2) = g;
	test_data_number(i, 3) = b;
        
	test_data_name = strcat(test_data_name, ' ');
	test_data_name = strcat(test_data_name, images(i).name);
	test_data_name = strrep(test_data_name, '.JPG', ' , ');
end
    
test_data_name = split(test_data_name);

for i = 1 : count 
	test_data_names(i) = strrep(test_data_name(i, 1), ',', '');
end
```

## Test
مانند Train مسیر پوشه Test را خوانده و تصاویر آن را در images نگه می داریم .
حال تابع Train را فراخوانی کرده و مرحله آموزش را انجام می دهیم .
```
clc;
clear;
close all;

path    = '../img/test/';
images	= dir(strcat(path, '*.jpg'));
count   = length(images);

[ test_data_number, test_data_names ] = train();
```
<br/>
حال مانند مرحله Train، تک به تک تصاویر را خواهنده و هر تصویر را در متغیر image قرار داده سپس میانگین مقادیر کانال های آبی و سبز و قرمز
هر تصویر را به کمک تابع rgbAvg محاسبه می نماید.
<br/>
این مقادیر را هم در متغیر های r , g , b و در گام بعد در ماتریس image_result نگه می دارد.
<br/>
حال مقادیر r , g , b را با 255 - کمترین مقدار بین میانگین کانال های تصاویر مرحله آزمایش جمع می شود و اگر مقدار آن بالاتر از 255
شد آن را با 255 جایگرین می کند.
 روند پیش رو در مرحله تست به این صورت است که مشابه Train، avg مقادیر کانال ها به صورت مجزا از هم محاسبه کردیم
حال به کمک تابع Distance  فاصله بین میانگین هر تصویر موجود در Test و Train را به دست آورده و در
 ماتریسی به نام temp_distance   ذخیره می کنیم که ابتدای کار آن را به ابعادی تعریف میکنیم که نتیجه مقایسه هر تصویر با تصویر Train را در ان نگه داریم،
### Distance Function
تابع فاصله بدین شکل تعریف شده است :
```
function distance = Distance(x1, y1, z1, x2, y2, z2)
    distance = abs(x2 - x1) + abs(y2 - y1) +  abs(z2 - z1);
end
```
توجه نمایید که در این تابع، فاصله متهتن به عنوان سنجه فاصله محاسبه می شود.
<br/>
سپس با محاسبه هر فاصله، چنانچه از مقدار قبلی کمتر بود آن را در min_distance جایگزین می کنیم. در نهایت برچسب تصویری از Train که کمترین فاصله با آن را دارد به آن اختصاص داده می شود.
<br/>
دقت کنید که مقدار min_distance ابتدای کار یک است چون فاصله عددی بین صفر و یک است و ما max مقدار را به آن اختصاص دادیم.
<br/>
در ماتریس images_result مقادیر میانگین کانال ها، برچسب عددی پیش بینی شده تصویر و فاصله آن با میانگین تصویر Train نوشته می شود .
و در ماتریس images_result_label نام و برچسب تصویر در قالب ارزش اسکناس ذخیره می شود.
<br/>
در انتها با فرمان شرطی if کاری می کنیم که avg مقادیر اگر دور از avg موجود باشد تصویر را با عنوان no money نمایش دهد و در صورت صحت انجام اعمال تعریف شده ، Done = 1 چاپ خواهد شد .
```
figure;
for i = 1 : count
    image_file          = images(i).name;
    image               = imread(strcat(path, image_file));
    
    [r, g, b] = rgbAvg(image);
    
    images_result(i, 1) = r;
    images_result(i, 2) = g;
    images_result(i, 3) = b;
    min_distance = 1;
    
    for j = 1 : train_size
        
        add_value = min(test_data_number(j,1), min(test_data_number(j,2), test_data_number(j,3) ) );
        add_one = double(r) + (255 - add_value);
        add_two = double(g) + (255 - add_value);
        add_three = double(b) + (255 - add_value);
        
        if(add_one > 255)
            add_one = 255;
        end
        
        if(add_two > 255)
            add_two = 255;
        end
        
        if(add_three > 255)
            add_three = 255;
        end
        
        temp_distance(i, j) = Distance(add_one, add_two, add_three, test_data_number(j,1), test_data_number(j,2), test_data_number(j,3));
        if( temp_distance(i, j) < temp_distance(i, min_distance) )
            min_distance = j;
        end
    end
    images_result(i, 4) = min_distance;
    images_result(i, 5) = temp_distance(i, min_distance);
    images_result_label(1, :) = 'file name';
    images_result_label(2, i) = images(i).name;
    images_result_label(4, :) = 'result';
    images_result_label(5, i) = test_data_names(min_distance);
    if(images_result(i, 5) > 99 || (double(r) < 10 && double(g) < 10 && double(b) < 10) || (double(r) > 250 && double(g) > 250 && double(b) > 250) )
        images_result_label(5, i) = 'no money';
        images_result(i, 4) = 0;
    end
    
    subplot(round(count / 4), round(count / 4),i),imshow(image);
    title(images_result_label(5, i));
end

Done = 1
```
این برنامه ممکن است دقت 100 درصدی نداشته باشد ولی طبق نتایج، عملکرد خیلی ضعیفی نخواهد داشت.
<br/>
حال هر تصویری از اسکناس یا یر اسکناس که در پوشه Test قرار دهیم می تواند ارزش آن را پیش بینی نموده و نمایش دهد.
ما برای نمونه 10 تصویر  از تصاویر اسکناس هایی که در طی تمرین دهم جمع آوری شده است را در پوشه Train و 35 تصویر را در پوشه Test قرار دادیم
:نتیجه را در زیر خواهیم دید
![Result]()


