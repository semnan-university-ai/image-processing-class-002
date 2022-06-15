function [img2,img1,img0]=cropp(img,a,b,a1,b1)
img0=imread(img);
row=size(img0,1);
col=size(img0,2);
dim=size(img0,3);
if dim ~=1
    img1=rgb2gray(img0);
    if a>=row || b>=col || a1>=row || b1>=col
        disp("you should go for another size")
    else
        k0=1;
        for i=a:a1
            k1=1;
            for j=b:b1
                im(k0,k1)=img0(i,j);
                k1=k1+1;
            end
            k0=k0+1;
        end
    end
else
    if a>=row || b>=col
        disp("you should go for another size")
    else
        k0=1;
        k1=1;
        for i=a:a1
            for j=b:b1
                im(k0,k1)=img0(i,j);
                k0=k0+1;
                k1=k1+1;
            end
        end
    end
end
img2=im;
end