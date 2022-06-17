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
شماره تصویر خوانده شده در index ذخیره می‌شود. مبلغ اسکناس در نام تصویر بین پرانتز نوشته شده است. نام فایل را ذخیره می‌کنیم و قسمت مبلغ را با split جدا می‌کنیم. مقادیر در متغییر‌های مربوطه ذخیره می‌شوند.

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
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/project/fvatani/2.png)

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

**تجزیه و تحلیل میزان موفقیت روش پیشنهادی**

در ادامه جهت سنجش میزان موفقیت روش پیشنهادی، موارد ذکر شده بر روی تمامی تصاویر موجود در فایل testdata در فضای hsv و rgb اعمال شد. ابتدا به بررسی اجمالی کد و درنهایت نتایج می‌پردازیم.

```
clc;
clear;
close all

pathDir = 'datasource';
if ~isfolder(pathDir)
  sprintf('Error: The following folder does not exist:\n%s', pathDir)
  return;
end

x=200;
y=400;

dontcare=true;
alpha=16;
dim=256;

filePattern = fullfile(pathDir, '*.jpg');
imgfiles = dir(filePattern);
N=length(imgfiles);

sta = struct;
datastract=repmat(sta,1,N);
kol = struct;
kol.hphM_Y=0;
kol.hphM_N=0;
kol.hphV_Y=0;
kol.hphV_N=0;
kol.hphMn_Y=0;
kol.hphMn_N=0;
kol.hphVn_Y=0;
kol.hphVn_N=0;
kol.hphCo_Y=0;
kol.hphCo_N=0;
kol.cphM_Y=0;
kol.cphM_N=0;
kol.cphV_Y=0;
kol.cphV_N=0;
kol.cphMn_Y=0;
kol.cphMn_N=0;
kol.cphVn_Y=0;
kol.cphVn_N=0;
kol.cphCo_Y=0;
kol.cphCo_N=0;
kol.ssim_Y=0;
kol.ssim_N=0;
kol.ssimV_Y=0;
kol.ssimV_N=0;
kol.ssimS_Y=0;
kol.ssimS_N=0;
kol.ssimH_Y=0;
kol.ssimH_N=0;
kol.ssimSh_Y=0;
kol.ssimSh_N=0;
kol.ssimHh_Y=0;
kol.ssimHh_N=0;

file = cell(1,N);
ssimval_E = cell(1,N);

filePath = 'datatest';
if ~isfolder(pathDir)
  sprintf('Error: The following folder does not exist:\n%s', pathDir)
  return;
end

testPattern = fullfile(filePath, '*.jpg');
testfiles = dir(testPattern);
M=length(testfiles);
stb = struct;
allstract=repmat(stb,1,M);
```
از دستورات clear all، clc و close all به ترتیب برای پاک کردن صفحهCommand Window، حذف متغیر‌ها و بستن پنجره‌ها استفاده شده است. سپس چک می‌شود که مسیر مورد نظر وجود دارد یا نه. در صورتی که وجود نداشته باشد پیام مورد نظر چاپ شده و برنامه پایان می‌یابد. اگر پوشه مورد نظر در مسیر برنامه وجود داشته باشد تابع isfolder مقدار یک را بر می‌گرداند. متغیر‌های مورد استفاده در برنامه تعریف شده‌اند. تمامی فایل‌هایی که پسوند jpg داشته باشند خوانده می‌شوند و در imgfiles قرار می‌گیرند. با تابع length تعداد عناصر موجود که تعداد فایل تصاویر است شمرده می‌شود. متغیر sta وkol از نوع struct ساخته شده و توسط تابع repmat به تعداد عناصر کپی ایجاد شده است. مجدداً چک می‌شود که مسیر مورد نظر وجود دارد یا نه. در صورتی که وجود نداشته باشد پیام مورد نظر چاپ شده و برنامه پایان می‌یابد. تمامی فایل‌هایی که پسوند jpg داشته باشند خوانده می‌شوند و در testfiles قرار می‌گیرند. همچنین تعداد فایل‌های موجود در این پوشه نیز در M قرار می‌گیرد. متغیر stb از نوع struct ساخته شده و توسط تابع repmat به تعداد عناصر کپی ایجاد شده است.

```
for m = 1:M
    
    filetest = testfiles(m).name;
    txttest = split(filetest,["(",")"]);
    img_test = imread(fullfile(filePath,filetest));
    allstract(m).filename=filetest;
    allstract(m).txt=txttest(2);
    img_test=imresize(img_test, [x, y]);
    hph_test = hisPramHSV(img_test,16);
    cph_test = calcPramHSV(img_test,256,256);
```
به تعداد تصاویر موجود در فایل تست حلقه تکرار می‌شود. مقداری که در نام فایل بین دو () قرار گرفته در txttest ذخیره شده و تصویر تست خوانده می‌شود. مقادیر خوانده شده در struct ذخیره می‌شود. تصویر ریسایز شده و به عنوان ورودی دو تابع hisPramHSV و calcPramHSV قرار می‌گیرد. در ادامه این دو تابع شرح داده شده و سپس به ادامه کد باز می‌گردیم.

```
function [out] = hisPramHSV(img,alpha)
   out = struct;
    if((ndims(img)==3) || (size(img,3)==3))

        hsv_img = rgb2hsv(double(img));
        
        H_channel = hsv_img(:,:,1);
        S_channel = hsv_img(:,:,2);
        V_channel = hsv_img(:,:,3);
        
        [his_H,~] = imhist(H_channel,256);
        [his_S,~] = imhist(S_channel,256);
        [his_V,~] = imhist(V_channel,256);
        out.re_his_H = reshape(his_H,[],alpha);
        out.re_his_S = reshape(his_S,[],alpha);
        out.re_his_V = reshape(his_V,[],alpha);
        out.maen_hist_H_col = mean(out.re_his_H);
        out.maen_hist_S_col = mean(out.re_his_S);
        out.maen_hist_V_col = mean(out.re_his_V);
        out.maen_hist_H_all = mean2(out.re_his_H);
        out.maen_hist_S_all = mean2(out.re_his_S);
        out.maen_hist_V_all = mean2(out.re_his_V);
        out.var_hist_H_col = var(out.re_his_H);
        out.var_hist_S_col = var(out.re_his_S);
        out.var_hist_V_col = var(out.re_his_V);
        out.var_hist_H_all = var(out.re_his_H(:));
        out.var_hist_S_all = var(out.re_his_S(:));
        out.var_hist_V_all = var(out.re_his_V(:));

    else
        disp("image must be RGB color");
    end

end
```
در صورتی که تصویر سه کانال مورد نظر را داشته باشد مراحل زیر طی می‌شود. تصویر به کانال hsv رفته و مقدار هر کانال ذخیره شده سپس هیستوگرام هر کانال جداگانه محاسبه می‌شود. هیستوگرام هر کانال را تغییر شکل می‌دهیم و میانگین و واریانس محاسبه می‌کنیم.
```
function [out] = calcPramHSV(img,alpha,dim)
    out = struct;
    if((ndims(img)==3) || (size(img,3)==3))
        img=imresize(img,[dim,dim],'bilinear');
        out.hsv_img = rgb2hsv(double(img));

        H_channel = out.hsv_img(:,:,1);
        S_channel = out.hsv_img(:,:,2);
        V_channel = out.hsv_img(:,:,3);
        
        out.re_H = reshape(H_channel,[],alpha);
        out.re_S = reshape(S_channel,[],alpha);
        out.re_V = reshape(V_channel,[],alpha);
        out.maen_H_col = mean(out.re_H);
        out.maen_S_col = mean(out.re_S);
        out.maen_V_col = mean(out.re_V);
        out.maen_H_all = mean2(out.re_H);
        out.maen_S_all = mean2(out.re_S);
        out.maen_V_all = mean2(out.re_V);
        out.var_H_col = var(out.re_H);
        out.var_S_col = var(out.re_S);
        out.var_V_col = var(out.re_V);
        out.var_H_all = var(out.re_H(:));
        out.var_S_all = var(out.re_S(:));
        out.var_V_all = var(out.re_V(:));

    else
        disp("image must be RGB color");
    end

end
```
در این تابع نیز در صورتی که سه کانال وجود داشته باشد سایز تصویر تغییر یافته و به کانال hsv می‌رود. سپس هر مؤلفه برای کانال تغییر شکل داده شده محاسبه می‌گردد.
```
    for n = 1 : N
        datastract(n).index=n;
        filename = imgfiles(n).name;
        datastract(n).filename = string(imgfiles(n).name);
        txtcurrency = split(imgfiles(n).name,["(",")"]);
        txtcurrencynew = char(txtcurrency(2));
        if dontcare==true
            txtcurrencynew = txtcurrencynew(1:end-1);
        end
        datastract(n).txt = string(txtcurrencynew);
        fullFileName = fullfile(pathDir, filename);

        img_src = imread(fullFileName);
        img_src = imresize(img_src, [x, y]);

        datastract(n).hph=hisPramHSV(img_src,16);
        datastract(n).cph=calcPramHSV(img_src,256,256);
        
        [datastract(n).ssim_hh,~] = ssim(hph_test.re_his_H,datastract(n).hph.re_his_H);
        [datastract(n).ssim_hs,~] = ssim(hph_test.re_his_S,datastract(n).hph.re_his_S);
        [datastract(n).ssim_hv,~] = ssim(hph_test.re_his_V,datastract(n).hph.re_his_V);
        [datastract(n).ssim_h,~] = ssim(cph_test.re_H,datastract(n).cph.re_H);
        [datastract(n).ssim_s,~] = ssim(cph_test.re_S,datastract(n).cph.re_S);
        [datastract(n).ssim_v,~] = ssim(cph_test.re_V,datastract(n).cph.re_V);
        [datastract(n).ssim_rgb,~] = ssim(img_src,img_test); 
```
حلقه به تعداد تصاویر فایل source تکرار می‌شود. نام هر فایل و مقدار درون فایل پرانتز ذخیره می‌شود. تصویر خوانده شده تغییر اندازه پیدا می‌کند و مؤلفه‌های مورد نظر در دو تابع محاسبه می‌گردد. مقدار ssim هیستوگرام و خود کانال تصویر تست و مرجع محاسبه می‌شود. همچنین ssim دو تصویر در مدل rgb نیز محاسبه شده است.

```
        for i=1:alpha

            mm = datastract(n).cph.maen_H_col(i);
            mt = cph_test.maen_H_col(i);

            vv = datastract(n).cph.var_H_col(i);
            vt = cph_test.var_H_col(i);

            cs = datastract(n).cph.re_H(:);
            ct = cph_test.re_H(:);


            mc = (mm*mt)/(mm^2+mt^2);
            vc = (vv*vt)/(vv^2+vt^2);

            mean_Et = mean_Et + (mm-mt)^2;
            varr_Et = varr_Et + (vv-vt)^2;
            asim_Cmt = asim_Cmt + mc;
            asim_Cvt = asim_Cvt + vc;


            covmat=cov(cs,ct);
            co=covmat(1,2);c1=covmat(1,1);c2=covmat(2,2);
            cc=(co/((c1*c2)+0.000000000000001));
            asim_Cct = asim_Cct + cc;
        end


        datastract(n).cphDmean = mean_Et;
        datastract(n).cphDvar = varr_Et;
        datastract(n).cphSmean = asim_Cmt;
        datastract(n).cphSvar = asim_Cvt;
        datastract(n).cphcov = asim_Cct;
```
از متغییر‌هایی که تا کنون بدست آورده‌ایم برای محاسبه فرمول‌هایی که در بخش اول بصورت گسترده توضیح داده شد استفاده می‌کنیم.

```
        mean_Et=0;varr_Et=0;asim_Cmt=0;asim_Cvt=0;asim_Cct=0;
        for i=1:alpha
            
            mm = datastract(n).hph.maen_hist_H_col(i);
            mt = hph_test.maen_hist_H_col(i);

            vv = datastract(n).hph.var_hist_H_col(i);
            vt = hph_test.var_hist_H_col(i);

            cs = datastract(n).hph.re_his_H(:);
            ct = hph_test.re_his_H(:);

            mc = (mm*mt)/(mm^2+mt^2);
            vc = (vv*vt)/(vv^2+vt^2);

            mean_Et = mean_Et + (mm-mt)^2;
            varr_Et = varr_Et + (vv-vt)^2;
            asim_Cmt = asim_Cmt + mc;
            asim_Cvt = asim_Cvt + vc;


            covmat=cov(cs,ct);
            co=covmat(1,2);c1=covmat(1,1);c2=covmat(2,2);
            cc=(co/((c1*c2)+0.000000000000001));
            asim_Cct = asim_Cct + cc;
        end


        datastract(n).hphDmean = mean_Et;
        datastract(n).hphDvar = varr_Et;
        datastract(n).hphSmean = asim_Cmt;
        datastract(n).hphSvar = asim_Cvt;
        datastract(n).hphcov = asim_Cct;

    end
```
فرمول ها برای هیستوگرام هر کانال hsv محاسبه شده است.

```
    disp(' ');
    disp("---------------"+filetest+"----------------");
    txttestnew = char(txttest(2));
    if dontcare==true
        txttestnew = txttestnew(1:end-1);
    end
    kol=printresult_analysis(datastract,string(txttestnew),kol);
```
برای چاپ نتایج از تابع printresult_analysis استفاده شده است.
```
function [kol] = printresult(data_stract,txtreal,kol)
    N=length(data_stract);
    disp('_______________on channel hue in histogram');
    tempp=cell2mat(reshape({data_stract.hphDmean},[1,N]));
    MinVal=min(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO";end
    if data_stract(yy).txt==txtreal kol.hphM_Y=kol.hphM_Y+1; else kol.hphM_N=kol.hphM_N+1;end
    disp("mean hist = "+data_stract(yy).txt+"  "+lbl+"  Y="+string(kol.hphM_Y)+"  N="+string(kol.hphM_N));

    tempp=cell2mat(reshape({data_stract.hphDvar},[1,N]));
    MinVal=min(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.hphV_Y=kol.hphV_Y+1; else kol.hphV_N=kol.hphV_N+1;end
    disp("variance hist= "+data_stract(yy).txt+"  "+lbl+"  Y="+string(kol.hphV_Y)+"  N="+string(kol.hphV_N));

    tempp=cell2mat(reshape({data_stract.hphSmean},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.hphMn_Y=kol.hphMn_Y+1; else kol.hphMn_N=kol.hphMn_N+1;end
    disp("mean normal hist= "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.hphMn_Y)+"  N="+string(kol.hphMn_N));

    tempp=cell2mat(reshape({data_stract.hphSvar},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.hphVn_Y=kol.hphVn_Y+1; else kol.hphVn_N=kol.hphVn_N+1;end
    disp("variance normal hist = "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.hphVn_Y)+"  N="+string(kol.hphVn_N));

    tempp=cell2mat(reshape({data_stract.hphcov},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.hphCo_Y=kol.hphCo_Y+1; else kol.hphCo_N=kol.hphCo_N+1;end
    disp("covariance hist= "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.hphCo_Y)+"  N="+string(kol.hphCo_N));
    
    disp(' ');
    disp('_______________on channel hue dirction');
    tempp=cell2mat(reshape({data_stract.cphDmean},[1,N]));
    MinVal=min(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.cphM_Y=kol.cphM_Y+1; else kol.cphM_N=kol.cphM_N+1;end
    disp("mean imageHSV= "+data_stract(yy).txt+"  "+lbl+"  Y="+string(kol.cphM_Y)+"  N="+string(kol.cphM_N));

    tempp=cell2mat(reshape({data_stract.cphDvar},[1,N]));
    MinVal=min(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.cphV_Y=kol.cphV_Y+1; else kol.cphV_N=kol.cphV_N+1;end
    disp("variance imageHSV= "+data_stract(yy).txt+"  "+lbl+"  Y="+string(kol.cphV_Y)+"  N="+string(kol.cphV_N));

    tempp=cell2mat(reshape({data_stract.cphSmean},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.cphMn_Y=kol.cphMn_Y+1; else kol.cphMn_N=kol.cphMn_N+1;end
    disp("mean normal imageHSV= "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.cphMn_Y)+"  N="+string(kol.cphMn_N));


    tempp=cell2mat(reshape({data_stract.cphSvar},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.cphVn_Y=kol.cphVn_Y+1; else kol.cphVn_N=kol.cphVn_N+1;end
    disp("variance normal imageHSV = "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.cphVn_Y)+"  N="+string(kol.cphVn_N));
    
    tempp=cell2mat(reshape({data_stract.cphcov},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.cphCo_Y=kol.cphCo_Y+1; else kol.cphCo_N=kol.cphCo_N+1;end
    disp("covariance imageHSV= "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.cphCo_Y)+"  N="+string(kol.cphCo_N));

    
    disp(' ');
    disp('_______________SSIM on channels HSV and RGB');
    tempp=cell2mat(reshape({data_stract.ssim_hh},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.ssimHh_Y=kol.ssimHh_Y+1; else kol.ssimHh_N=kol.ssimHh_N+1;end
    disp("SSIM = "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.ssimHh_Y)+"  N="+string(kol.ssimHh_N));

    tempp=cell2mat(reshape({data_stract.ssim_hs},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.ssimSh_Y=kol.ssimSh_Y+1; else kol.ssimSh_N=kol.ssimSh_N+1;end
    disp("SSIM Sturation histo= "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.ssimSh_Y)+"  N="+string(kol.ssimSh_N));  

    tempp=cell2mat(reshape({data_stract.ssim_h},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.ssimH_Y=kol.ssimH_Y+1; else kol.ssimH_N=kol.ssimH_N+1;end
    disp("SSIM Hue= "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.ssimH_Y)+"  N="+string(kol.ssimH_N));
    
    tempp=cell2mat(reshape({data_stract.ssim_s},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.ssimS_Y=kol.ssimS_Y+1; else kol.ssimS_N=kol.ssimS_N+1;end
    disp("SSIM Saturation= "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.ssimS_Y)+"  N="+string(kol.ssimS_N));
    
    tempp=cell2mat(reshape({data_stract.ssim_v},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.ssimV_Y=kol.ssimV_Y+1; else kol.ssimV_N=kol.ssimV_N+1;end
    disp("SSIM Value = "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.ssimV_Y)+"  N="+string(kol.ssimV_N));
    
    tempp=cell2mat(reshape({data_stract.ssim_rgb},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.ssim_Y=kol.ssim_Y+1; else kol.ssim_N=kol.ssim_N+1;end
    disp("SSIM = "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.ssim_Y)+"  N="+string(kol.ssim_N));

    
end
```

بخش اول بر هیستوگرام کانال‌های hsv انجام شده است. کوچکترین مقداراختلاف میانگین هیستوگرام کانال hsv تصاویررا بدست می‌اوریم. مقدار اصلی و تشخیص داده شده را مقایسه می‌کنیم در صورتی که درست تشخیص داده شده باشد یک واحد به متغیر hphM_Y و در غیر این صورت به hphM_N اضافه می‌شود. به طور مشابه برای بقیه روش‌ها و فرمول‌ها نیز عمل می‌کنیم. خروجی نهایی:

 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/project/fvatani/4.png)
 
 - میانگین بر روی هیستوگرام کانال hue از مدل hsv با ۳۵ درصد پاسخگویی درست
- کوواریانس بر روی کانال hue مدل hsv تصویر با ۴۹ درصد موفقیت
- و ssim کانال value در روش ssim کانال‌های hsv و rgb با ۶۳ درصد موفقیت بهترین نتایج را داشته‌اند.

