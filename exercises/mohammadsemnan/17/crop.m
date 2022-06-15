clc;
clear all;
close;

x = input('x start from:');
x1 = input('x end in:');

y = input('y start from:');
y1 = input('y end in:');


c=zeros((x1-x),(y1-y));
d=imread('monarch.png');
m=size(d,1);
n=size(d,2);
if (x<0 || x1<0 || y<0 || y1<0) || (x>m || x1>m || y>n || y1>n)
    disp('Error number is not in range');
else
    disp('numbers are in range');
end

for i=1:(x1-x)
        for j=1:y1-y
            g(i,j)=d((i+x),(j+y));
        end
end

imshow(g);
