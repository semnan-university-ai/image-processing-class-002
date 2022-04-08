<div dir="rtl">
<h3>برنامه ای بنویسی که نمره ی دانشجو رو از 0 تا 20 دریافت کند و آن را به فرمت GPA محاسبه کند و بعد هم آن را با کاراکتر انگلیسی نمایش دهد.</h3>
<br/>
در کد زیر ابتدا تابعی تحت عنوان score ایجاد شده و در متغیری به نام student_scoreمقدار ورودی نمره توسط کاربر قرار میگرد.
<br/><br/>
</div>


```
function score 
student_score = input("enter your score: ");
```
<div dir="rtl">
در کد زیر نیز بیان شده است :
<li>
 در صورتی که عدد وارد شده بین 19 تا 20 باشد مقدار A+ نمایش داده شود.
 </li>
 <li>
 در صورتی که عدد وارد شده بین 18 تا 19 باشد مقدار A نمایش داده شود.
 </li>
  <li>
 در صورتی که عدد وارد شده بین 17 تا 18 باشد مقدار B+ نمایش داده شود.
 </li>
  <li>
 در صورتی که عدد وارد شده بین 15 تا 17 باشد مقدار B نمایش داده شود.
 </li>
  <li>
 در صورتی که عدد وارد شده بین 14 تا 15 باشد مقدار C+ نمایش داده شود.
 </li>
  <li>
 در صورتی که عدد وارد شده بین 12 تا 14 باشد مقدار C نمایش داده شود.
 </li>
  <li>
 در صورتی که عدد وارد شده بین 10 تا 12 باشد مقدار D نمایش داده شود.
 </li>
  <li>
 در صورتی که عدد وارد شده بین 0 تا 10 باشد مقدار F نمایش داده شود.
 </li>
 <li>
 در غیر این صورت مقدار Wrong score نمایش داده شود
 </li>
 
<br/>
</div>


```
if student_score >= 19 && student_score <= 20
    level = "A+"
elseif student_score >= 18 && student_score < 19
    level = "A"
elseif student_score >= 17 && student_score < 18
    level = "B+"
elseif student_score >= 15 && student_score < 17
    level = "B"
elseif student_score >= 14 && student_score < 15
    level = "C+"    
elseif student_score >=12  && student_score < 14
    level = "C"
elseif student_score >= 10 && student_score < 12
    level = "D"
elseif student_score >= 0 && student_score < 10
    level = "F"
else
    level = "Wrong score"
end
```

