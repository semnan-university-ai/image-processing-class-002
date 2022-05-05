<div dir="rtl">
  
  ### تصویر رنگی را به حالت True color ببرید و در تبدیل خود مقدار پیکسل را به مقدار نزدیک آن در True Color میل دهید.
  
  تصاویر truecolor تصاویری هستند که فقط 6 مقدار دارند: 0و 51و 102و 153و 204و 255 .
  </br>
  برای این تبدیل باید مقادیر اصلی پیکسل ها را به این اعداد تغییر دهیم. مثلا به هر پیکسل با مقادیر بین 0-51 فقط مقدار 51 را بدهیم.
  </br>
  اگر بخواهیم مقدار پیکسل ها به مقدار اصلی خود نزدیک باشند به آنها بازه می دهیم.
  </br>
  برای این کار به صورت زیر عمل میکنیم:
  </br>
  در اینجا ما ایتدا یک تابع می سازیم، سپس آن را فرامیخوانیم.
  </br>
  
  </div>

### Function

```
function img1 = truecolor(img)

    img = imread(img);
    img1 = img;
    imgsiz = size(img1);

    x = imgsiz(1,1);
    y = imgsiz(1,2);

    %0-51
    for i = 1:x
        for j = 1:y
            for k = 1:3
                if img1(i,j,k) < 51 && img1(i,j,k) > -1
                    if img1(i,j,k) >= 26
                        img1(i,j,k) = 51;
                    else
                        img1(i,j,k) = 0;
                    end
                
            %52-102
                elseif img1(i,j,k) < 102
                    if img1(i,j,k) >= 77
                        img1(i,j,k) = 102;
                    else
                        img1(i,j,k) = 52;
                    end
                
            %103-153
                elseif img1(i,j,k) < 153
                    if img1(i,j,k) >= 127
                        img1(i,j,k) = 153;
                    else
                        img1(i,j,k) = 103;
                    end
                
            %153-204
                elseif img1(i,j,k) < 204
                    if img1(i,j,k) >= 178
                        img1(i,j,k) = 204;
                    else
                        img1(i,j,k) = 153;
                    end
                
            %205-255
                elseif img1(i,j,k) <= 255
                    if img1(i,j,k) >= 229
                        img1(i,j,k) = 255;
                    else
                        img1(i,j,k) = 205;
                    end
                end                       
            end
        end
    end
    figure, imshowpair(img, img1, 'montage')
end
```

### main

```
clc;
close all;
clear;

truecolor("MATLAB/frymire.png");
truecolor("MATLAB/girl.png");
```

### in & out put

![tc1](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2016/tc1.JPG)

![tc2](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2016/tc2.JPG)
