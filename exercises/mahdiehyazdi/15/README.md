<div dir="rtl">
<h3>با فرمول حالت سوم تصویر رنگی را به تصویر خاکستری تبدیل کنید.</h3><br/>
</div>
<div dir="rtl">
 در ابتدای کار تصویر را بارگزاری کرده و اندازه های ان را استخراج میکنیم.
 </div> <br/>
 
 ```
 clc;
clear all;
close;

img = imread('./Image1.jpg');
x_img=size(img,1);
y_img=size(img,2);
```
<h3 dir="rtl"> تصویر ورودی</h3>
 <div align="center">
 <img src="Image1.jpg">
 </div>

<div dir="rtl">
در ادامه با استفاده از 2 حلقه تمام تصویر را پیشمایش کرده و با اعمال فرمول آن را خاکستری میکنیم و از انجا که هر تصویر شامل 3 کانال است ، کانال 1 مربوط به قرمز ، کانال دوم مربوط به سبز و سوم نیز مربوط به آبی است در نهایت تصویر نمایش داده شده است.  
</div> <br/>
 
 ```
 for i=1:x_img
    for j=1:y_img
        result(i,j)=(img(i,j,1)*0.299)+(img(i,j,2)*0.567)+(img(i,j,3)*0.134);
    end
end
imshow(result);
```
 <h3 dir="rtl"> خروجی</h3>
 <div align="center">
 <img src="output.jpg">
 </div>
  


