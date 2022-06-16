clc 
clear
close all
fim;
TestIm=imread('C:\Users\s.ali.motavally\Desktop\esknas\CD\test\100t-4.jpg');
[ RAveTestIm,GAveTestIm,BAveTestIm] = RGB( TestIm );
TestImInfo=[ RAveTestIm,GAveTestIm,BAveTestIm];
clear RAveTestIm GAveTestIm BAveTestIm
load Data
 

if  ( (isempty(find((TestImInfo<F10000+7)==0)) && isempty(find((TestImInfo>F10000-7)==0)))) 
figure, imshow(uint8(TestIm)), title('10000 Toman');
elseif  ( (isempty(find((TestImInfo<F20000+5)==0)) && isempty(find((TestImInfo>F20000-5)==0)))) 
figure, imshow(uint8(TestIm)), title('20000 Toman');
elseif  ( (isempty(find((TestImInfo<F500000+1)==0)) && isempty(find((TestImInfo>F500000-1)==0)))) 
figure, imshow(uint8(TestIm)), title('50000 Toman');
elseif  ( (isempty(find((TestImInfo<F1000000+10)==0)) && isempty(find((TestImInfo>F1000000-10)==0)))) 
figure, imshow(uint8(TestIm)), title('100000 Toman');
else
figure, imshow(uint8(TestIm)), title(' no match');

end





