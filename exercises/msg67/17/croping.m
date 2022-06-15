clear;
close all;
clc;
%........................

img= imread("benchmark/cat.png");
figure,imshow(uint8(img)),hold on

img=rgb2gray(img);
figure,imshow(uint8(img)),hold on

size=size(img);
sizeWidth = size(1,1);
sizeHeight = size(1,2);




xx1=input("please enter your first numberr in range of 0 and "...
    +sizeWidth+ ": ");
xx2=input("please enter your second numberr in range of "+ xx1 +...
    " and "+sizeWidth+ ": ");
yy1=input("please enter your first numberr in range of 0 and "...
    +sizeHeight+ ": ");
yy2=input("please enter your second numberr in range of "+yy1+" and "...
    +sizeHeight+ ": ");


result=zeros((max(xx1,xx2)- min(xx1,xx2)), (max(yy1,yy2)-min(yy1,yy2)));


l=1;
k=1;

for i=min(xx1,xx2) : max(xx1,xx2)
    for j=min(yy1,yy2) : max(yy1,yy2);
         result(l,k)=img(i,j);  
         k=k+1;
    end
    k=1;
    l=l+1;
end



figure, imshow(uint8(result));

  
