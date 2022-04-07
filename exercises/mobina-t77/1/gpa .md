
# محاسبه GPA
## توضیح کد:
این کد در ابتدای همه برنامه ها موجود است و محیط کار در متلب  و متغیر ها و حافظه استفاده شده در برنامه های قبلی را پاک می کند و همه آپشن های باز را می بندد تا تلاقی در مقدار متغیرها یا فایل ها رخ ندهد.
```
clc;
clear;
close all;
```
برنامه از این جا شروع می شود
در این جا ابتدا نمرات GPA  را با 13 تا نمره لیست می کنیم:
```
gpa = [4 4 3.7 3.3 3.0 2.7 2.3 2.0 1.7 1.3 1.0 0.7 0.0];
```
نمره ای راکه قرار است GPA آن محاسبه شود , در ورودی وارد می کنیم :
 ```
 mark = input('\n enter in a mark out 20:');
 ```
 لوپ اصلی برنامه است که VALID  بودن نمره را بررسی می کند که اگر VALID  باشد یعنی بین 0 تا 20 باشد برنامه ادامه پیدا می کند:
```
if mark <=20 && mark >=0
...
else 
    fprintf('not a valid input , mark must be beteen 0-20\n');
end 
```
ار آنجایی که SCALE  نمره دهی ما از 0تا 20 است و برای محاسبه GPA  نمره از 100 محاسبه می شود پس نمره ورودی را در5 ضرب می کنیم تا بتوانیم مقایسه کنیم در ادامه کد
```
 mark = mark * 5;
```
در این قسمت نمره ای که در SCALE  مناسب محاسبه یعنی 0تا 100 رفته است با هر کدام از گروها مقایسه میشود تا گروه مورد نظر آن یافت شود و GPA  آن نمایش داده شود:
```
 if mark>=97 && mark<=100 
        fprintf('the mark of %f is equal to A+ which is equal to %f in gpa system\n', mark,gpa(1)); 
    elseif mark>=93 && mark<=96.99 
        fprintf('the mark of %f is equal to A which is equal to %f in gpa system\n', mark,gpa(2)); 
    elseif mark>=90 && mark<=92.99 
        fprintf('the mark of %f is equal to A- which is equal to %f in gpa system\n', mark,gpa(3)); 
    elseif mark>=87 && mark<=89.99 
         fprintf('the mark of %f is equal to B+ which is equal to %f in gpa system\n', mark,gpa(4)); 
    elseif mark>=83 && mark<=86.99 
         fprintf('the mark of %f is equal to B which is equal to %f in gpa system\n', mark,gpa(5)); 
    elseif mark>=80 && mark<=82.99 
         fprintf('the mark of %f is equal to B- which is equal to %f in gpa system\n', mark,gpa(6)); 
    elseif mark>=77 && mark<=79.99 
        fprintf('the mark of %f is equal to C+ which is equal to %f in gpa system\n', mark,gpa(7)); 
    elseif mark>=73 && mark<=76.99
        fprintf('the mark of %f is equal to C which is equal to %f in gpa system\n', mark,gpa(8)); 
    elseif mark>=70 && mark<=72.99 
         fprintf('the mark of %f is equal to C- which is equal to %f in gpa system\n', mark,gpa(9)); 
    elseif mark>=67 && mark<=69.99 
         fprintf('the mark of %f is equal to D+ which is equal to %f in gpa system\n', mark,gpa(10)); 
    elseif mark>=63 && mark<=66.99 
         fprintf('the mark of %f is equal to D which is equal to %f in gpa system\n', mark,gpa(11)); 
    elseif mark>=60 && mark<=62.99 
         fprintf('the mark of %f is equal to D- which is equal to %f in gpa system\n', mark,gpa(12)); 
    else
        fprintf('the mark of %f is a F which is equal to %f in gpa system\n', mark,gpa(13)); 
      end
```
در هر کدام از IF  ها نمره را مقایسه می کند و در نهایت نمره را با MARK  و GPA معادل آن را با  gpa (1-13) نشان می دهد:
```
 if mark>=97 && mark<=100 
        fprintf('the mark of %f is equal to A+ which is equal to %f in gpa system\n', mark,gpa(1)); 
```

در نهایت شکل خروجی به این صورت می باشد:
![This is an image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/mobina-t77/1/gpa%20output.png)

