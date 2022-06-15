فیلتر میانه:

این کد ها برای تمیز نگه داشتن workspace هستند و معمولا همه جا استفاده میشوند
```
clc;
close all;
clear;
```

در این مرحله عکس ورودی را خوانده و به حالت خاکستری برده و سایز آن ذخیره کرده و مقدار new به اندازه عکس ماست اما با مقدار 0
```
I = imread('1.jpg');
I=rgb2gray(I);

[M,N]=size(I);
new=I-I;
```
![1](https://user-images.githubusercontent.com/94211519/166085185-606e11d9-da71-4d7a-a1a3-e970610a658c.jpg)


![1g](https://user-images.githubusercontent.com/94211519/166085205-8b89707b-be3c-4f8b-a315-ef582cc728ed.jpg)

در اینجا ابعاد خود را مشخص میکنیم که 7 اندازه پنجره ما میباشد و پنجره ای به همان اندازه با مقدار 0 میسازیم

```
kernel_size=7;
k=zeros(kernel_size);
```

حال با استفاده از حلقه ها فیلتر میانه را رو عکس اعمال میکنیم و از نقطه ی start شروع میکنیم


```
start=kernel_size-floor(kernel_size*0.5);
for x=start:1:M-floor(kernel_size*0.5)
for y=start:1:N-floor(kernel_size*0.5)
```

اولین نقطه پنجره خود را مشخص میکنیم

```
x1=x-(floor(kernel_size*0.5));
y1=y-(floor(kernel_size*0.5));
```

حالا با حلقه پیکسل ها را برای پنجره فیلتر خود مشخص میکنیم

```
for p=1:1:kernel_size
            for q=1:1:kernel_size
                k(p,q)=I(x1+p-1,y1+q-1);
            end
end
```

حال داده های عکس خود را در یک آرایه میریزیم و شروع به ترتیب دهی به آنان میکنیم و حلقه هایی که در اول برنامه باز کردیم را میبندیم
```
d=reshape(k,1,[]);
        [r,c]=size(d);
        for j=1:1:c-1
            for i=1:1:c-1
                a=d(1,i);
                b=d(1,i+1);
                if (a>b)
                    d(1,i)=b;
                    d(1,i+1)=a;
                end
            end
        end
        Median=d(1,floor(kernel_size*kernel_size*0.5)+1);
        new(x,y)=Median; ![11me](https://user-images.githubusercontent.com/94211519/166091215-39a442d3-9087-4bc0-9673-4586691c37c4.jpg)
![11mean](https://user-images.githubusercontent.com/94211519/166091216-5eeb8ba1-6158-400f-93b6-685d3ed0671f.jpg)

    end
end
imshow(new,[]);

end
end
```
خروجی به شکل زیر است

![1me](https://user-images.githubusercontent.com/94211519/166090856-08b14158-b426-4655-a7ac-a440885fcf05.jpg)


فیلتر میانگین:

میتوان از توابع آماده نیز استفاده کرد که کار راحت تری نیز میباشد برای فیلتر میانگین از کد زیر میتوان استفاده کرد که با تعریف یک پنجره 7*7  و مشخص کردن نوع آن که میانگین است را رو تصویر خود اعمال میکنیم
```
A=imread('1.jpg');
A=rgb2gray(A);
h=fspecial('average',[7 7]);
filtered=imfilter(A,h);
```

خروجی به شکل زیر میباشد

![1mean](https://user-images.githubusercontent.com/94211519/166090983-f8a407aa-8e4c-4a02-9a42-fde31a80e945.jpg)


خروجی های فیلتر میانه

![2me](https://user-images.githubusercontent.com/94211519/166091144-598a72fc-17ec-450a-9cc2-5649e4b5de12.jpg)

![3me](https://user-images.githubusercontent.com/94211519/166091147-043b71bb-18c5-447a-b490-15996d8b6ad5.jpg)

![4me](https://user-images.githubusercontent.com/94211519/166091149-047ac410-d080-469a-910d-6c33effbf663.jpg)

![5me](https://user-images.githubusercontent.com/94211519/166091152-2371f55c-5719-43c0-8ffa-70fed8657d6c.jpg)

![6me](https://user-images.githubusercontent.com/94211519/166091159-9dff429e-5d66-4637-ba06-bbf36500421d.jpg)

![7me](https://user-images.githubusercontent.com/94211519/166091166-639e9589-29d0-4061-80eb-7b65f5f4224a.jpg)

![8me](https://user-images.githubusercontent.com/94211519/166091174-498ebfcf-d002-438c-b8f8-5acf335bdc7b.jpg)

![9me](https://user-images.githubusercontent.com/94211519/166091185-48b11eb1-7bd2-42c5-b7dd-172dad2d423a.jpg)

![10 me](https://user-images.githubusercontent.com/94211519/166091211-8f3526b8-4f1a-4542-be28-f5dedbde301a.jpg)

![12me](https://user-images.githubusercontent.com/94211519/166091223-ded795c6-d673-4aed-87e1-807c94c406d2.jpg)

خروجی های فیلتر میانگین

![2mean](https://user-images.githubusercontent.com/94211519/166091145-a985f728-801a-4b2f-918d-f4108d51fed0.jpg)

![3mean](https://user-images.githubusercontent.com/94211519/166091148-2025c99b-7677-4ab4-be6d-981eba476680.jpg)

![4mean](https://user-images.githubusercontent.com/94211519/166091150-77f68767-af96-4e0b-b4c5-b33b0983d66d.jpg)

![5mean](https://user-images.githubusercontent.com/94211519/166091153-512d81ac-b40e-4a38-8e24-b8db2d970925.jpg)

![6mean](https://user-images.githubusercontent.com/94211519/166091160-b199f175-849a-411a-b6bc-11d15794d8e4.jpg)

![7mean](https://user-images.githubusercontent.com/94211519/166091167-fb3ec7e8-7ba6-4450-843f-e58d1d44515a.jpg)

![8mean](https://user-images.githubusercontent.com/94211519/166091176-7e46d03c-7774-4f55-aaea-f8220f2f5924.jpg)

![9mean](https://user-images.githubusercontent.com/94211519/166091192-96186beb-0053-4bd1-8f7c-5ee8b08a33de.jpg)

![10mean](https://user-images.githubusercontent.com/94211519/166091213-9a9669fa-9da8-4354-b6ad-482254832f37.jpg)

![12mean](https://user-images.githubusercontent.com/94211519/166091224-2db50055-6ebd-4c5b-badc-1cf03038cf23.jpg)

