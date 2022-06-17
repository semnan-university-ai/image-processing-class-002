**تمرین پروژه اسکناس**
<br>
در این بخش داده های آموزش را از پوشه trainبر می داریم.
```
myFolder = 'C:\Users\central\Desktop\money\train';
```


پسوند مورد نظر برای فایل ها را تایین می نماییم.

```
filePattern1 = fullfile(myFolder,'**/*.jpg');
theFiles = dir(filePattern1);
Filelength=length(theFiles);
```
در این قسمت کلید های آموزشی را ایجاد می کنیم .
```
key = zeros(3,Filelength);
```
این قسمت مقدار اسکناس مربوط به هر کلید را می نویسیم.
```
Face = strings(1,Filelength);
```
در این قسمت از کانال های مختلف عکس های آموزشی یکی یکی میانگین می گیریم .

```
%train
disp("TRAIN: ")
for k = 1 : Filelength
    baseFileName = theFiles(k).name;
    fullFileName = fullfile(theFiles(k).folder, baseFileName);
    [folder ,baseFileNameNoExt, extension] = fileparts(fullFileName);
    foldersplit=regexp(folder,'\','split');
    fprintf(1, 'Now reading %s\n', fullFileName);  
    image=imread(fullFileName);

```
در این قسمت هیستوگرام تصویر را می یگریم 
```
image = histeq(image);
```

میانگین کانال ها رامی گیریم.
```
    R=mean(image(:,:,1),'all');
    G=mean(image(:,:,2),'all');
    B=mean(image(:,:,3),'all');
    L=string(foldersplit(1,length(foldersplit)));
    Face(k)= L;

```
میانگین ها را در متغییر key ریخته تا برای تست استفاده نماییم

```
    disp("R : "+R+", G : "+G+", B : "+B);
end
%test

```

از دیتا های فایل test برای test  استقاده می نماییم.
```
disp("TEST: ")
myFolder2 ='C:\Users\central\Desktop\money\test';
filePattern2 = fullfile(myFolder2,'**/*.jpg');
theFiles = dir(filePattern2);
Filelength2=length(theFiles);
Tru=0;
Fals=0;
for k = 1 : Filelength2
    baseFileName = theFiles(k).name;
    fullFileName = fullfile(theFiles(k).folder, baseFileName);
    [folder ,baseFileNameNoExt, extension] = fileparts(fullFileName);
    foldersplit=regexp(folder,'\','split');
    fprintf(1, 'Now reading %s\n', fullFileName);
      
    ImageTest=imread(fullFileName);

```

مجددا کارهایی که با داده های train انجام دادیم را این بار برای داده های test نیز تکرار می نماییم.
```
R=mean(ImageTest(:,:,1),'all');
G=mean(ImageTest(:,:,2),'all');
B=mean(ImageTest(:,:,3),'all');
 ```
 
 در این قسمت به محاسبه خطا می پردازیم :
 ```
 Test = [R G B];
    NumberOfPaper = size(key);
    Number=NumberOfPaper(1,2);
    Error=zeros(1,Number);
    for o=1 : Number
        for p=1:3
            Error(o)=Error(o)+(key(p,o)- Test(p))^2;
        end    
    end
```

 این قسمتمقدار واقعی اسکناس ها را بدست می آوریم.
 
 ```
 L=string(foldersplit(1,length(foldersplit)));
 ```
 
 در این بخش  ایندکس خطای کمینه را برای مقایسه کردن با مقدار واقعی اسکناس بدست می آوریم.
 

 ```
 [M,I] = min(Error);
    %disp("It's a : " + Face(I));

 ```
 
 آن دو را با هم مقایسه نموده و اگر درست بود به درست ها و اگر نادرست بود به نادرست ها می پیوندیم.
 
 ```
   if Face(I) == L 
        Tru=Tru+1;
        disp("True");
    else
        Fals=Fals+1;
        disp("False");
    end    
end

 ```
 
 سپس دقت الگوریتم را نمایش می دهیم :
 
 
 ```
 disp("Accuracy : %" + string(Tru/(Tru+Fals)*100));
 
 ```
 
 خروجی 
 <br>
![Uploading out1.jpeg…]()
![Uploading out2.jpeg…]()



