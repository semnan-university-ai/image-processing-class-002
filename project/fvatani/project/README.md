**کلیت روش**

در این پروژه از هیستوگرام تصویر اسکناس استفاده شده است زیرا در آن موقعیت مکانی پیکسل‌ها اهمیت ندارد. از طرفی به دلیل محدود بودن انواع اسکناس‌ها می‌توان بدون در نظر گرفتن موقعیت پیکسل‌ها از طیف رنگ استفاده کرد بدین منظور هیستوگرام بسیار مناسب است. برای استفاده از رنگ تصویربه فضای رنگ HSV برده شده است و از کانال رنگ hue که مستقل از روشنایی و اشباع رنگ است استفاده شده است. در ادامه جزئیات کد بررسی شده است.

```
clc;
clear all;
close all;
```
از دستورات clear all، clc و close all  به ترتیب برای پاک کردن صفحهCommand Window، حذف متغیرها و بستن پنجره ها استفاده شده است.
```
pathDir = 'datasource';
if ~isfolder(pathDir)
  sprintf('Error: The following folder does not exist:\n%s', pathDir)
  return;
end
```
در این قسمت چک می‌شود که مسیر مورد نظر وجود دارد یا نه. در صورتی که وجود نداشته باشد پیام مورد نظر چاپ شده و برنامه پایان می‌یابد. اگر پوشه مورد نظر در مسیر برنامه وجود داشته باشد تابع isfolder مقدار یک را بر می‌گرداند.

```
f1 = figure;
f2 = figure;

x=200;
y=400;

alpha=16;

filePattern = fullfile(pathDir, '*.jpg');
imgfiles = dir(filePattern);
N=length(imgfiles);

s = struct;
datastract=repmat(s,1,length(imgfiles));

file = cell(1,N);
img_src = cell(1,N);
hsv_src = cell(1,N);
hue_src = cell(1,N);
sat_src = cell(1,N);
val_src = cell(1,N);
his_src = cell(1,N);
rsh_src = cell(1,N);
maen_src = cell(1,N);
var_reshape_src = cell(1,N);
var_src = cell(1,N);
mean_E = cell(1,N);
varr_E = cell(1,N);
var_E = cell(1,N);
asim_Cm = cell(1,N);
asim_Cv = cell(1,N);
asim_Cc = cell(1,N);
ssimval_E = cell(1,N);
```
متغیر‌های مورد استفاده در برنامه تعریف شده‌اند. تمامی فایل‌هایی که پسوند jpg داشته باشند خوانده می‌شوند و در imgfiles قرار می‌گیرند. با تابع length تعداد عناصر موجود که تعداد فایل تصاویر است شمرده می‌شود. متغیر s از نوع struct ساخته شده و توسط تابع repmat به تعداد عناصر کپی ایجاد شده است.

```
[fileName,filePath] = uigetfile('*', 'Select data file currency', '.');
if filePath==0
    error('None selected!'); 
end

img_test = imread(fullfile(filePath,fileName));
img_test = imresize(img_test, [x, y]);
hsv_test = rgb2hsv(img_test);

hue_test = hsv_test(:,:,1);
sat_test = hsv_test(:,:,2);
val_test = hsv_test(:,:,3);
```
دستور uigetfile دیالوگی باز می‌کند و به کاربر امکان می‌دهد نام یک فایل را انتخاب یا وارد کند. اگر کاربر فایلی انتخاب نکند پیام موردنظر چاپ می‌شود. تصویر مورد نظر با دستور imread خوانده می‌شود. اندازه تصویر به x=۲۰۰ و y=۴۰۰ تغییر می‌یابد. با تابع rgb۲hsv تصویر rgb را به مدل hsv تبدیل می‌کند. در نهایت سه کانال رنگ، اشباع و روشنایی جدا شدند.

```
[his_test,~] = imhist(hue_test);
reshape_test = reshape(his_test,[],alpha);
maen_test = mean(reshape_test);
var_test = var(his_test);
var_reshape_test = var(reshape_test);
figure(f1);
subplot(3,3,1),imshow(img_test,[]),title("orginal");
subplot(3,3,2),imshow(hsv_test,[]),title("hsv");
subplot(3,3,4),imshow(hue_test,[]),title("hue");
subplot(3,3,7),imhist(hue_test),title("hue");
subplot(3,3,5),imshow(sat_test,[]),title("sat");
subplot(3,3,8),imhist(sat_test),title("sat");
subplot(3,3,6),imshow(val_test,[]),title("val");
subplot(3,3,9),imhist(val_test),title("val");
figure(f2);
subplot(ceil(N/7),7,1),imshow(reshape_test,[]),title("orginal");
```
با دستور imhist هیستوگرام تصویر ورودی(تست) محاسبه می‌شود. هیستوگرام بدست امده reshape می‌شود. مقدار alpha برابر با ۱۶ تعیین شده زیرا تنوع اسکناس‌ها و رنگ‌های آن بیش از ۱۶ مورد نیست. با تابع mean میانگین عناصرهیستوگرام تغییر اندازه داده شده محاسبه می‌شود. همچنین واریانس هیستوگرام اصلی و تغییر اندازه داده شده محاسبه می‌شود. مقادیر محاسبه شده نمایش داده می‌شود.


 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/project/fvatani/1.png)
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/project/fvatani/2.png)
 


```
for n = 1 : N
    mean_Et=0;
    var_Et=0;
    var_reshape_Et=0;
    asim_Cmt=0;
    asim_Cvt=0;
    asim_Cct=0;
    datastract(n).index=n;
    filename = imgfiles(n).name;
    datastract(n).filename = string(imgfiles(n).name);
    txtcurrency = split(imgfiles(n).name,["(",")"]);
    datastract(n).txt = string(txtcurrency(2));
    fullFileName = fullfile(pathDir, filename);
```
با دستور imhist هیستوگرام تصویر ورودی(تست) محاسبه می‌شود. هیستوگرام بدست امده reshape می‌شود. مقدار alpha برابر با ۱۶ تعیین شده زیرا تنوع اسکناس‌ها و رنگ‌های آن بیش از ۱۶ مورد نیست. با تابع mean میانگین عناصرهیستوگرام تغییر اندازه داده شده محاسبه می‌شود. همچنین واریانس هیستوگرام اصلی و تغییر اندازه داده شده محاسبه می‌شود. مقادیر محاسبه شده نمایش داده می‌شود.

```
    filee = imread(fullFileName);
    img_src{n} = imresize(filee, [x, y]);
    hsv_src{n} = rgb2hsv(img_src{n});
    
    hue_src{n} = hsv_src{n}(:,:,1);
    sat_src{n} = hsv_src{n}(:,:,2);
    val_src{n} = hsv_src{n}(:,:,3);

    [his_src{n},~] = imhist(hue_src{n});
    rsh_src{n} = reshape(his_src{n},[],alpha);
    maen_src{n} = mean(rsh_src{n});
    var_src{n} = var(his_src{n});
    var_reshape_src{n}= var(rsh_src{n});
    
    [ssimval,~] = ssim(sat_test,sat_src{n});
```
در ادامه حلقه تصویر مورد نظر خوانده می‌شود. مانند تصویر ورودی تغییر اندازه داده شده و مدل رنگی به hsv تغییر می‌یابد. سه کانال رنگ، اشباع و روشنایی جدا می‌شوند. هیستوگرام تصویر محاسبه شده و تغییر اندازه می‌یابد. با تابع mean میانگین عناصر هیستوگرام تغییر اندازه داده شده محاسبه می‌شود. همچنین واریانس هیستوگرام اصلی و تغییر اندازه داده شده محاسبه می‌شود. شاخص شباهت ساختاری (SSIM) کانال اشباع این تصویر و تصویر ورودی محاسبه می‌شود.


```
   for i=1:alpha
        mm=maen_src{n}(i);
        mt=maen_test(i);
        mc=(mm*mt)/(mm^2+mt^2);
        
        vv=var_reshape_src{n}(i);
        vt=var_reshape_test(i);
        vc=(vv*vt)/(vv^2+vt^2);
        
        mean_Et = mean_Et + (maen_src{n}(i)-maen_test(i))^2;
        var_reshape_Et = var_reshape_Et + (var_reshape_src{n}(i)-var_reshape_test(i))^2;
        asim_Cmt = asim_Cmt + mc;
        asim_Cvt = asim_Cvt + vc;
        
        covmat=cov(rsh_src{n}(:,i),reshape_test(:,i));
        co=covmat(1,2);c1=covmat(1,1);c2=covmat(2,2);
        cc=(co/((c1*c2)+0.000000000000001));
        asim_Cct = asim_Cct + cc;
    end
```
میانگین هیستوگرام تغییر سایز داده شده هر دو تصویر در فرمول MSE جایگذاری شده و خطای میانگین مربعات محاسبه شده است. سپس خطای میانگین مربعات واریانس آن‌ها محاسبه شده است. اختلاف میانگین در mean_Et و اختلاف واریانس در var_reshape_Et ذخیره شده است. کواریانس هیستوگرام اصلی و تغییر اندازه داده شده نیز در covmat ذخیره شده و از آن در فرمول SSIM که در کلاس درس مطرح شد استفاده شده است. این حلقه برای تمام ماتریس هیستوگرام ۱۶*۱۶تصاویر تکرار می‌شود.

```  
    mean_E{n}=mean_Et;
    varr_E{n}=var_reshape_Et;
    asim_Cm{n}=asim_Cmt;
    asim_Cv{n}=asim_Cvt;
    asim_Cc{n}=asim_Cct;
    ssimval_E{n}=ssimval;
    datastract(n).deltamean = mean_Et;
    datastract(n).deltavar = var_reshape_Et;
    datastract(n).asimmean = asim_Cmt;
    datastract(n).asimvar = asim_Cvt;
    datastract(n).asimcov = asim_Cct;
    datastract(n).ssimval = ssimval;

   
    subplot(ceil((N+1)/7),7,n+1),imshow(rsh_src{n},[]),title({filename,num2str(ssimval)});
```
مقادیر در متغیر‌های مربوطه ذخیره می‌شود. نام فایل، مقدار SSIM و هیستوگرام تغییر اندازه داده شده تصویر نمایش داده می‌شود.
```
mean_E;
MinVal=min(cell2mat(mean_E));
[~,yy]=find([mean_E{:}]==MinVal);
disp("mean = "+datastract(yy).txt)

varr_E;
MinVal=min(cell2mat(varr_E));
[~,yy]=find([varr_E{:}]==MinVal);
disp("variance = "+datastract(yy).txt)

asim_Cm;
MinVal=max(cell2mat(asim_Cm));
[~,yy]=find([asim_Cm{:}]==MinVal);
disp("mean normal= "+string(datastract(yy).txt))

asim_Cv;
MinVal=max(cell2mat(asim_Cv));
[~,yy]=find([asim_Cv{:}]==MinVal);
disp("variance normal = "+string(datastract(yy).txt))

asim_Cc;
MinVal=max(cell2mat(asim_Cc));
[~,yy]=find([asim_Cc{:}]==MinVal);
disp("covariance = "+string(datastract(yy).txt))

ssimval_E;
MinVal=max(cell2mat(ssimval_E));
[~,yy]=find([ssimval_E{:}]==MinVal);
disp("SSIM = "+string(datastract(yy).txt));
```
بعد از اتمام حلقه نتایج نمایش داده می‌شود. varr_E به ماتریس تبدیل می‌شود و کوچکترین مقدار در MinVal قرار می‌گیرد. کوچکترین مقدار mean_E را پیدا می‌کنیم و txt که مقدار اسکناس را نشان می‌دهد چاپ می‌کنیم. این کار برای پیدا کردن کوچکترین مقدار واریانس، کوواریانس، ssim و بقیه موارد تکرار می‌شود. درنهایت مقدار اسکناس در هر روش چاپ می‌شود.
 
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/project/fvatani/3.png)

