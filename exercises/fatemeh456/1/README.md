```
%GPA score system
clc;
clear;
close all;
studnetnumber = input("enter a number: ");
if studnetnumber >= 0 && studnetnumber <= 20
    studnetnumber = studnetnumber * 5;
    if studnetnumber >= 97 && studnetnumber <= 100
        ans = "4.0 Scale = '4.0' & Letter Grade = 'A+'"
    elseif studnetnumber >= 93 && studnetnumber <= 96
        ans = "4.0 Scale = '4.0' & Letter Grade = 'A'"
    elseif studnetnumber >= 90 && studnetnumber <= 92
        ans = "4.0 Scale = '3.7' & Letter Grade = 'A-'"
    elseif studnetnumber >= 87 && studnetnumber <= 89
        ans = "4.0 Scale = '3.3' & Letter Grade = 'B+'"
    elseif studnetnumber >= 83 && studnetnumber <= 86
        ans = "4.0 Scale = '3.0' & Letter Grade = 'B'"
    elseif studnetnumber >= 80 && studnetnumber <= 82
        ans = "4.0 Scale = '2.7' & Letter Grade = 'B-'"
    elseif studnetnumber >= 77 && studnetnumber <= 79
        ans = "4.0 Scale = '2.3' & Letter Grade = 'C+'"
    elseif studnetnumber >= 73 && studnetnumber <= 76
        ans = "4.0 Scale = '2.0' & Letter Grade = 'C'"
    elseif studnetnumber >= 70 && studnetnumber <= 72
        ans = "4.0 Scale = '1.7' & Letter Grade = 'C-'"
    elseif studnetnumber >= 67 && studnetnumber <= 69
        ans = "4.0 Scale = '1.3' & Letter Grade = 'D+'"
    elseif studnetnumber >= 65 && studnetnumber <= 66
        ans = "4.0 Scale = '1.0' & Letter Grade = 'D'"
    elseif studnetnumber < 65
        ans = "4.0 Scale = '0.0' & Letter Grade = 'E/F'"
    end
else
    ans = "Out of range"
end
```
<div dir="rtl">
    سه خط ابتدایی کد، تنها به جهت اجرای روان تر کد ها، سعی می شود در ابتدای تمامی برنامه ها نوشته شود.
    <br/>
    سپس نمره، بعنوان یک ورودی از کاربر گرفته می شود.
    <br/>
    در ادامه کد را بصورتی نوشتم که اگر نمره وارد شده در بازه درستی قرار داشت روند عادی طی شود وگرنه پیام out of range به نمایش درآید.
    <br/>
    از آنجا که سیستم  GPA براساس بازه 0 تا 100 مطرح شده و نمره ورودی در بازه 0 تا 20 است ، ابتدا آن را در 5 ضرب کرده تا تبدیل بازه ای انجام شده، سپس براساس نمره وارد شده خروجی متناسب با آن در خروجی چاپ خواهد شد.
    </div>
