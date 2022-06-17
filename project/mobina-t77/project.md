# پروژه تشخیص پول 
## توضیح کد:
این کد در ابتدای همه برنامه ها موجود است و محیط کار در متلب  و متغیر ها و حافظه استفاده شده در برنامه های قبلی را پاک می کند و
همه آپشن های باز را می بندد تا تلاقی در مقدار متغیرها یا فایل ها رخ ندهد.
```
clc;
clear;
close all;
```

به طور کلی در کد پروژه اینجانب از روش فاصله اقلیدسی رنگ تصاویر استفاده میکنیم به طوریکه رنگ تصویر ورودی هر چه بیشتر مشابه داده های معیار داده شده در کد اصلی
باشد به عنوان خروجی مورد نظر انتخاب میشود پروژه شامل 5 فایل کد :یک فایل کد اصلی و 5 فایل توابع می یاشد. همچنین در دیتا ست جمع شده تصاویر پول  a,b,c  به عنوان 
داده ی معیار استفاده میشوند و  داده ی d ,e به عنوان داده ی تست استفاده میشود.
### Making trainsets
```
trainsets_image = imread('10000-d.jpg');
[m,n] = size(trainsets_image);

```
در این قسمت کد پولی که قرار است شناخته شود وارد میشود و سایز آن ذخیره میگردد. 
```
money_1000_a  = imread('1000-a.jpg');
money_1000_b  = imread('1000-b.jpg');
money_1000_c  = imread('1000-c.jpg');


money_2000_a  = imread('2000-a.jpg');
money_2000_b  = imread('2000-b.jpg');
money_2000_c  = imread('2000-c.jpg');

money_5000_a  = imread('5000-a.jpg');
money_5000_b  = imread('5000-b.jpg');
money_5000_c  = imread('5000-c.jpg');

money_10000_a  = imread('10000-a.jpg');
money_10000_b  = imread('10000-b.jpg');
money_10000_c  = imread('10000-c.jpg');
```
در این قسمت کد پولهای معیار خوانده و ذخیره میشود.
### resize dataset
```

money_1000_a  = imresize(money_1000_a ,[m,n/3]);
money_1000_b  = imresize(money_1000_b ,[m,n/3]);
money_1000_c  = imresize(money_1000_c ,[m,n/3]);

money_2000_a  = imresize(money_2000_a ,[m,n/3]);
money_2000_b  = imresize(money_2000_b ,[m,n/3]);
money_2000_c  = imresize(money_2000_c ,[m,n/3]);

money_5000_a  = imresize(money_5000_a ,[m,n/3]);
money_5000_b  = imresize(money_5000_b ,[m,n/3]);
money_5000_c  = imresize(money_5000_c ,[m,n/3]);

money_10000_a  = imresize(money_10000_a ,[m,n/3]);
money_10000_b  = imresize(money_10000_b ,[m,n/3]);
money_10000_c  = imresize(money_10000_c ,[m,n/3]);


```
در این قسمت داده های ورودی همگی ریسایز میشوندتا کار با آنها راحتتر شود.
### using prepare function
```

[trainsets_we_R,trainsets_we_G,trainsets_we_B]=Prepare(trainsets_image);

[money_1000_a_R,money_1000_a_G,money_1000_a_B]=Prepare(money_1000_a);
[money_1000_b_R,money_1000_b_G,money_1000_b_B]=Prepare(money_1000_b);
[money_1000_c_R,money_1000_c_G,money_1000_c_B]=Prepare(money_1000_c);

[money_2000_a_R,money_2000_a_G,money_2000_a_B]=Prepare(money_2000_a);
[money_2000_b_R,money_2000_b_G,money_2000_b_B]=Prepare(money_2000_b);
[money_2000_c_R,money_2000_c_G,money_2000_c_B]=Prepare(money_2000_c);

[money_5000_a_R,money_5000_a_G,money_5000_a_B]=Prepare(money_5000_a);
[money_5000_b_R,money_5000_b_G,money_5000_b_B]=Prepare(money_5000_b);
[money_5000_c_R,money_5000_c_G,money_5000_c_B]=Prepare(money_5000_c);

[money_10000_a_R,money_10000_a_G,money_10000_a_B]=Prepare(money_10000_a);
[money_10000_b_R,money_10000_b_G,money_10000_b_B]=Prepare(money_10000_b);
[money_10000_c_R,money_10000_c_G,money_10000_c_B]=Prepare(money_10000_c);

```
در قسمت کد prepare کانال های رنگی هر عکس را جدا میکند و در نهایت هم یک سری پردازش روی آن ها انجام میدهد که جلوتر به تفصیل
تابع prepare  را توضیح میدهیم.

### subtraction 
```
%% Subtracting  money1000-a  from trainset
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_1000_a_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_1000_a_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_1000_a_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_1000_a = mean(mean(out));

%% Subtracting money1000-b from trainsets 
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_1000_b_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_1000_b_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_1000_b_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_1000_b = mean(mean(out));

%% Subtracting  money1000-c from trainsets 
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_1000_c_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_1000_c_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_1000_c_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_1000_c = mean(mean(out));



%% Subtracting  money2000-a from trainsets 
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_2000_a_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_2000_a_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_2000_a_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_2000_a = mean(mean(out));

%% Subtracting  money2000-b from trainsets 
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_2000_b_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_2000_b_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_2000_b_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_2000_b = mean(mean(out));

%% Subtracting  money2000-c from trainsets 
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_2000_c_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_2000_c_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_2000_c_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_2000_c = mean(mean(out));

%% Subtracting  money5000-a from trainsets 
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_5000_a_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_5000_a_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_5000_a_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_5000_a = mean(mean(out));

%% Subtracting  money5000-b from trainsets 
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_5000_b_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_5000_b_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_5000_b_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_5000_b = mean(mean(out));

%% Subtracting  money5000-c from trainsets 
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_5000_c_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_5000_c_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_5000_c_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_5000_c = mean(mean(out));

%% Subtracting  money10000-a from trainsets 
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_10000_a_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_10000_a_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_10000_a_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_10000_a = mean(mean(out));

%% Subtracting  money10000-b from trainsets 
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_10000_b_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_10000_b_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_10000_b_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_10000_b = mean(mean(out));

%% Subtracting  money10000-c from trainsets 
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_10000_c_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_10000_c_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_10000_c_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_10000_c = mean(mean(out));
```
در قسمت تفریق یا subtraction هر کدام از پول های معیار یا آموزش را از یک جز ثابت که در کد قسمت قبل با تابع prepare  محاسبه 
شده بود , کم میکند. سپس از مقیاس روشناسی استفاده کرده و فاصله اقلیدسی هر کانال تصویر را محاسبه میکند و در نهایت هم ارزش هر 
پول را ذخیره میکند .

### RECOGNITION
```

[val_1000_a val_1000_b val_1000_c val_2000_a val_2000_b val_2000_c val_5000_a val_5000_b val_5000_c val_10000_a val_10000_b val_10000_c ];
value = min( [val_1000_a val_1000_b val_1000_c val_2000_a val_2000_b val_2000_c val_5000_a val_5000_b val_5000_c val_10000_a val_10000_b val_10000_c ]);

if value==val_1000_a
     fprintf('The input was recognized as 1000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
elseif value==val_1000_b
     fprintf('The input was recognized as 1000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
elseif value==val_1000_c
     fprintf('The input was recognized as 1000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
elseif value==val_2000_a
     fprintf('The input was recognized as 2000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
elseif value==val_2000_b
     fprintf('The input was recognized as 2000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
elseif value==val_2000_c
     fprintf('The input was recognized as 2000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
elseif value==val_5000_a
     fprintf('The input was recognized as 5000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
elseif value==val_5000_b
     fprintf('The input was recognized as 5000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
elseif value==val_5000_c
     fprintf('The input was recognized as 5000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
elseif value==val_10000_a
     fprintf('The input was recognized as 10000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
elseif value==val_10000_b
     fprintf('The input was recognized as 10000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
elseif value==val_10000_c
     fprintf('The input was recognized as 10000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
end 
```
درکد قسمت recognition در نهایت ارزش محاسبه شده برای داده ورودی را با ارزش هر کدام پول ها که در قسمت قبل ایجاد شد  مقایسه
میکند و کوچترین ارزش به عنوان پول مورد نظر شناسایی میشود.

### output 
در نهایت شکل خروجی به این صورت می باشد: 
![This is an image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/project/mobina-t77/project.png)

### تابعPREPARE:
تابع prepare کاری که انجام میدهد این است که به طور کلی دیتاست را آماده سازی میکند. در قدم اول با تابع masking  کانال های
رنگی تصویر را جدا میکند . در قدم بعدی با تابع averaging  میانگین هر تصویر کانال رنگی را محاسبه میکند و در نهایت
با تابعscaling of brightness مقیاس روشنایی هر تصویر را اندازه میگیرد .

```
function [ y_R,y_G,y_B ] = Prepare( x )

[y_R,y_G,y_B]=Masking(x);

y_R=Averaging(y_R);
y_G=Averaging(y_G);
y_B=Averaging(y_B);

y_R=ScalingOfBrightness(y_R);
y_G=ScalingOfBrightness(y_G);
y_B=ScalingOfBrightness(y_B);

end


```

###  تابعMasking:
```

function [ y_R,y_G,y_B ] = Masking( x )
y_R=x(:,:,1);
y_G=x(:,:,2);
y_B=x(:,:,3);
end


```


###  تابعAveraging:
```
function [ y ] = Averaging( x )

x_avg=mean(mean(x));
y=double(x)-x_avg;

end
```


### تابع scaling of brightness:

```
function [ y ] = ScalingOfBrightness( x )

x_max=max(max(x));
y=x./x_max;

end


```
