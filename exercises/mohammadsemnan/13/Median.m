clc;
clear;
close;



I = imread('1.jpg');
I=rgb2gray(I);

[M,N]=size(I);
new=I-I;
kernel_size=7;
k=zeros(kernel_size);
start=kernel_size-floor(kernel_size*0.5);
for x=start:1:M-floor(kernel_size*0.5)
    for y=start:1:N-floor(kernel_size*0.5)
        x1=x-(floor(kernel_size*0.5));
        y1=y-(floor(kernel_size*0.5));
        for p=1:1:kernel_size
            for q=1:1:kernel_size
                k(p,q)=I(x1+p-1,y1+q-1);
            end
        end
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
        new(x,y)=Median; 
    end
end
imshow(new,[]);


