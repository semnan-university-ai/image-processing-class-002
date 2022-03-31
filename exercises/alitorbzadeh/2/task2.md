# task2

## padding

### توضیحات:
در این قسمت عملیات padding را به دو روش عملیاتی شده است و در هر دو روش یک کد قابل حمل ارائه شده است و کد‌های آن به‌صورت function ارائه گردیده است. لذا در ادامه ابتدا به معرفی روش اول پرداخته می‌شود:
#### روش اول
```
1)function [output]=padding2(input)
2)dim=size(input,3);
3)if dim~=1
4)    input=rgb2gray(input);
5)    col=size(input,2);
6)    a=zeros(1,col);
7)    input=vertcat(a,input);
8)    input=vertcat(input,a);
9)    row=size(input,1);
10)    b=zeros(row,1);
11)    input=horzcat(b,input);
12)    input=horzcat(input,b);
13)else
14)    col=size(input,2);
15)    a=zeros(1,col);
16)    input=horzcat(a,input);
17)    input=horzcat(input,a);
18)    row=size(input,1);
19)    b=zerose(row,1);
20)    input=vertcat(b,input);
21)    input=vertcat(input,b);
22)end
23)column=size(input,2);
24)roww=size(input,1);
25)a0=input(:,(column-1));
26)input(:,column)=a0;
27)a1=input(:,2);
28)input(:,1)=a1;
29)a2=input((roww-1),:);
30)input(roww,:)=a2;
31)a3=input(2,:);
32)input(1,:)=a3;
33)output=input;
34)output=input;
35)end
```
برای معرفی تابع ابتدا خروجی را با output در نظر گرفته شده و ورودی input در نظر گرفته شده است. اسم تابع نیز padding2 نیز است که فایل آن در پوشه 2 قرار گرفته است. در خط دوم ابتدا با دستور size تعداد کانال‌های تصویر را میابیم که متوجه بشویم که عکس rgb هست یا خاکستری. اگر خروجی این تابع خط دوم برابر با 3 باشد به این معنی است که تصویر rgb است. چون این برنامه برای اینکه قابل حمل باشد، بایستی این برنامه اگر تصویر rgb بود خودش به صورت خودکار آن را به تصویر خاکستری تبدیل کند. لذا ادامه برنامه برای بررسی این شرط با دستور if در خط 3 شروع می‌شود. اگر متغیر dim غیر یک باشد، این به این منظور است که تصویر rgb است و لذا  

