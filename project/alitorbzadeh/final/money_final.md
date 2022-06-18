# پروژه پایانی

## تشخیص مبلغ اسکناس

### مراحل انجام کار:

1. فراخوانی دیتاست معیار
2. پیش‌پردازش دیتاست معیار
3. فراخوانی و پیش پردازش داده تست
4. محاسبه اختلاف و شباهت دو تصویر
5. نمایش مبلغ پیشبینی‌شده و نتیجه کلی

## 1 فراخوانی دیتاست معیار

در این قسمت با دستور imread  تصویر پول به عنوان تصویر معیار برای بررسی شباهت یا تفاوت فراخوانی می‌شود. 

```
image1=imread('train/1.jpg');
image2=imread('train/2.jpg');
image3=imread('train/3.jpg');
image4=imread('train/4.jpg');
image5=imread('train/5.jpg');
image6=imread('train/1-2.jpg');
image7=imread('train/2-2.jpg');
image8=imread('train/3-2.jpg');
image9=imread('train/4-2.jpg');
image10=imread('train/5-2.jpg');
image11=imread('train/image (55).jpg');
image12=imread('train/image (56).jpg');
image13=imread('train/image (86).jpg');
image14=imread('train/image (90).jpg');
image15=imread('train/narenji.jpg');
image16=imread('train/sabz.jpg');
image17=imread('train/abi.jpg');

```


## 2 پیش‌پردازش دیتاست معیار
برای این منطور یک تابعی در نظر گرفته می ‌شود تا با فراخوانی این تابع پیش پردازش های لازم انجام شود. این تابع تحت عنوان pre معرفی می شود. این پیش پردازش ابتدا بررسی می کند تا تصویر دوران داده نشده باشد، به عبارت دیگر عرض تصویر از ارتفاع تصویر کوچکتر نباشد(خطوط 1 تا 4). سپس تصویر به اندازه150.320 تغییر سایز داده(خط5). در مرحله بعد، بر اساس مطالعات انجام شده، برای اینکه کانال قرمز در اسکناس های ایرانی نزدیک ترین دیتا را در اختیار ما قرار می دهد، بنابرین این تمرین با تمرکز بر روی کانال قرمز تصاویر متمرکز می شود. در مرحله بعد برای اینکه اگر نویز فلفل و نمکی در تصویر باشد با استفاده از فیلتر میانه این نویز ها حذف میشود(خط 6 و خط 7). در نهایت میانگین 8 پیکسل از تصویر را به صورت عرضی حساب کرده و ذخیره می شود(خط 8 تا خط 15). این میانگین جهت مقایسه با میانگین تصویر تست محاسبه می شود.  در ادامه تابع این پیش پردازش نوشته شده و در نهایت برای تمامی تصاویر این تابع فراخوانی می شود:
1. ساخت تابع

```
function  x= fitness(pic)
% a=imshow(pic);
1) [height ,width ,k] = size(pic);
2) if height > width    % if is it portraint ,rotate to landscape
3)        pic =imrotate(pic,90);
4) end
5)image=imresize(pic,[150,320]);
6)Rimage=image(:,:,1);
7)Rimage=medfilt2(Rimage);
imshow(Rimage);

8)a={};
9)m=1;
10)n=8;
11)for i=1:40
12)    a{i}=mean(mean(Rimage(1:150 , m:n)));
13)    m=n;
14)    n=n+8;
15)end

x=a;
end

```

2. حال در این قسمت با فراخوانی این تابع برای هر تصویر فراخوانی می کنیم. تا پیش پردازش بر روی هر تصویر انجام میگیرد و در نهایت تمامی تصاویر برای ادامه مراحل درون یک لیست قرار می گیرد. 

```
pansad=fitness(image1); %1
Bpansad=fitness(image6);%2
NBpansad=fitness(image14);%14
hezar=fitness(image2);%3
Bhezar=fitness(image7);%4
Nhezar=fitness(image12);%5
NBhezar=fitness(image11);%6
dohezar=fitness(image3);%7
Bdohezar=fitness(image8);%8
panjhezar=fitness(image4);%9
Bpanjhezar=fitness(image13);%10
NBpanjhezar=fitness(image9);%11
dahhezar=fitness(image5);%12
Bdahhezar=fitness(image10);%13
narenji=fitness(image15);%15
sabz=fitness(image16);%16
abi=fitness(image17);%17
list={pansad,Bpansad,hezar,Bhezar,Nhezar,NBhezar,dohezar,Bdohezar,panj
hezar,Bpanjhezar,NBpanjhezar,dahhezar,Bdahhezar,NBpansad,narenji,sabz,
abi};
```

## 3 فراخوانی و پیش پردازش داده تست
```
test_img=imread('money-dataset/ponsadi_ro.jpg');
test=fitness(test_img);

```
## 4. محاسبه اختلاف و شباهت دو تصویر

ابتدا حلقه ای ایجاد کرده و نزدیک ترین میانگین هر نمونه اموزشی را به مانگین نمونه تستی پیدا کرده و ذخیره کرده. در مرحله بعد بازه تغییرات میانگین های نمونه تستی را در داخل متغییر  differenceمیریزیم . و طبق آزمون خطاهایی که در نمونه های آموزشی انجام شد به این نتیجه رسیدیم که تصاویری که بازه تغییراتشان کمتر از  30بود اسکناس نبوده و تنها یک کاغذ رنگی بودن. ودر آخر بوسیله یک switchمشخص می‌کنیم مقدار بدست آمده از مقایسات چه اسکناسی را نمایش می‌دهد. در این کد از دو تابع maximum و minimum استفاده شده است که این دو تابع جهت نمایش شماره سلول با بیشترین و کمترین مقدار را نشان می دهدکه برای تشخیص شباهت از آن استفاده می شود. لذا در ادامه ابتدا به ساخت تابع maximum و minimum پرداخته و سپس در نهایت به ادامه نمایش کد اصلی پرداخته می شود. در واقع این دو تابع در کد اصلی فراخوانی می شود.
1. تابع maximum


```
function top=maximum(result)

max=result{1};
topp=1;
for i=2:length(result)
    if result{i}> max
        max=result{i};
        topp=i; 
    end
end
top=topp;

end
```

2. تابع minimum

```
function low=minimum(result)
min=result{1};
a=1;
for i=2:length(result)
    if result{i}< min
        min=result{i};
        a=i; 
    end
end
low=a;

end
```

در ادامه به بررسی کد پرداخته می شود:

```
result={};
z={};
count=0;
for j=1:length(list)
R=list{1,j};
for i=1:40
if R{i}==test{i} || R{i}-10< test{i} && test{i}<R{i}+10
z{i}=1;
count=count+1;
else
z{i}=0;
end
end
result{j}=count;
count=0;
end
top=maximum(result);
Tmax=maximum(test);
Tmin=minimum(test);
difference=test{Tmax} - test{Tmin};
if difference < 30
top=15;
end
switch topcase top==1
disp('500 toman');
case 2
disp('500 toman');
case 3
disp('1000 toman');
case 4
disp('1000 toman');
case 5
disp('1000 toman');
case 6
disp('1000 toman');
case 7
disp('2000 toman');
case 8
disp('2000 toman');
case 9
disp('5000 toman');
case 10
disp('5000 toman');
case 11
disp('5000 toman');
case 12
disp('10000 toman');
case 13
disp('10000 toman');
case 14
disp('500 toman');
case 15
disp('in faghat ye tike kagaze');
end
```

## 5. نمایش مبلغ پیشبینی‌شده و نتیجه کلی



![Defaced-Banknote-03](https://user-images.githubusercontent.com/95109502/173236051-5ba49604-f02e-4553-a6ee-f08deafa3c8c.jpg)

![11](https://user-images.githubusercontent.com/95109502/173236066-c6231c9f-224a-4511-acc6-04834cd1a65c.jpg)

![image (69)](https://user-images.githubusercontent.com/95109502/173236080-9df46905-dacd-4905-a405-8b141273f3e8.jpg)

![13](https://user-images.githubusercontent.com/95109502/173236091-b4034ed7-05ed-4a44-8589-6cdd6bd33deb.jpg)

![oldcash500](https://user-images.githubusercontent.com/95109502/173236102-5e35815f-5a46-457d-89b6-39e7ad92a23d.jpg)

![sabz](https://user-images.githubusercontent.com/95109502/173236112-b6a10e5a-6a58-4bd8-aa6d-dc20af09745f.jpg)

![ponsadi_ro](https://user-images.githubusercontent.com/95109502/173236119-ac650760-9d31-4d3f-99f1-6b74d12bed7d.JPG)

![paper-wallpaper-45968-47250-hd-wallpapers](https://user-images.githubusercontent.com/95109502/173236158-5413fd83-cc2e-4954-922b-dc2caabd95a0.jpg)








