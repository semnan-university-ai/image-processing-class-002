## gpa exercise
##### برنامه ای بنویسی که نمره ی دانشجو رو از 0 تا 20 دریافت کند و آن را به فرمت GPA محاسبه کند و بعد هم آن را با کاراکتر انگلیسی نمایش دهد
.
##### ابتدا نمره دانش اموز از 0 تا 20 توسط user داده می شود .سپس به 0 تا 100 تبدیل شده و با کدهای نوشته شده در زیر نمره از 0 تا 4 یا حرف A تا F داده می شود.
```
clc;
close all;
clear;
studentnum = input('enter a num');
num = studentnum *5;
if num >=97 && num <= 100
 gpa='A+ and 4'
 else if num >=93 && num <97
  gpa='A or 4'
  else if num >=90 && num <93
   gpa='A- or 3.7'
   else if num >=87 && num <90
    gpa='B+ or 3.3'
    else if num >=83 && num <87
     gpa='B or 3'
     else if num >=80 && num <83
      gpa='B- or 2.7'
      else if num >=77 && num <80.          
       gpa='C+ or 2.3'
       else if num >=73 && num <77
        gpa='C  or 2'
        else if num >=70 && num <73
         gpa='C- or 1.7'
         else if num >=67 && num <70
          gpa='D+ or 1.3'
          else if num >=65 && num <67
           gpa='D  or 1'
           else if num >=60 && num <65
            gpa='D- or 1'
            else if  num <60
             gpa='F or 0'
    
            end 
           end
          end
         end
        end
       end
      end 
     end
    end
   end
  end
 end
end
```


