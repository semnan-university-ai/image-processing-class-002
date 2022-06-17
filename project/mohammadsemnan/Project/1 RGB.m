clc;
clear all;
close all;

m1 = imread('1 (1).jpg');
m2=imread('1 (2).jpg');
m3=imread('1 (3).jpg');
m4=imread('1 (4).jpg');
m5=imread('1 (5).jpg');
m6=imread('input.jpg');

m1 = histeq(m1);
m2 = histeq(m2);
m3 = histeq(m3);
m4 = histeq(m4);
m5 = histeq(m5);
m6 = histeq(m6);


x=size(m1,1);
y=size(m1,2);

g=0;
r=0;
b=0;
g=uint32(g);
r=uint32(r);
b=uint32(b);
for i=1:x
    for j=1:y
        r=uint32(m1(i,j,1))+r;
        g=uint32(m1(i,j,2))+g;
        b=uint32(m1(i,j,3))+b;
    end

end
r=r/(x*y);
g=g/(x*y);
b=b/(x*y);

x1=size(m2,1);
y1=size(m2,2);

g1=0;
r1=0;
b1=0;
g1=uint32(g1);
r1=uint32(r1);
b1=uint32(b1);
for i=1:x1
    for j=1:y1
        r1=uint32(m2(i,j,1))+r1;
        g1=uint32(m2(i,j,2))+g1;
        b1=uint32(m2(i,j,3))+b1;
    end

end
r1=r1/(x1*y1);
g1=g1/(x1*y1);
b1=b1/(x1*y1);

x2=size(m3,1);
y2=size(m3,2);

g2=0;
r2=0;
b2=0;
g2=uint32(g2);
r2=uint32(r2);
b2=uint32(b2);
for i=1:x2
    for j=1:y2
        r2=uint32(m3(i,j,1))+r2;
        g2=uint32(m3(i,j,2))+g2;
        b2=uint32(m3(i,j,3))+b2;
    end
end
r2=r2/(x2*y2);
g2=g2/(x2*y2);
b2=b2/(x2*y2);

x3=size(m4,1);
y3=size(m4,2);

g3=0;
r3=0;
b3=0;
g3=uint32(g3);
r3=uint32(r3);
b3=uint32(b3);
for i=1:x3
    for j=1:y3
        r3=uint32(m4(i,j,1))+r3;
        g3=uint32(m4(i,j,2))+g3;
        b3=uint32(m4(i,j,3))+b3;
    end
end
r3=r3/(x3*y3);
g3=g3/(x3*y3);
b3=b3/(x3*y3);

x4=size(m5,1);
y4=size(m5,2);

g4=0;
r4=0;
b4=0;
g4=uint32(g4);
r4=uint32(r4);
b4=uint32(b4);
for i=1:x4
    for j=1:y4
        r4=uint32(m5(i,j,1))+r4;
        g4=uint32(m5(i,j,2))+g4;
        b4=uint32(m5(i,j,3))+b4;
    end
end
r4=r4/(x4*y4);
g4=g4/(x4*y4);
b4=b4/(x4*y4);

xi=size(m6,1);
yi=size(m6,2);

gi=0;
ri=0;
bi=0;
gi=uint32(gi);
ri=uint32(ri);
bi=uint32(bi);
for i=1:xi
    for j=1:yi
        ri=uint32(m6(i,j,1))+ri;
        gi=uint32(m6(i,j,2))+gi;
        bi=uint32(m6(i,j,3))+bi;
    end
end
ri=ri/(xi*yi);
gi=gi/(xi*yi);
bi=bi/(xi*yi);

if((ri>=r-12) && (ri<=r+12)&&(gi>=g-12) && (gi<=g+12)&&(bi>=b-12) && (bi<=b+12))
    imshow(m6);title('1000 Tomani');
elseif ((ri>=r1-12) && (ri<=r1+12)&&(gi>=g1-12) && (gi<=g1+12)&&(bi>=b1-12) && (bi<=b1+12))
    imshow(m6);title('2000 Tomani');                                  
elseif ((ri>=r2-12) && (ri<=r2+12)&&(gi>=g2-12) && (gi<=g2+12)&&(bi>=b2-12) && (bi<=b2+12))
    imshow(m6);title('5000 Tomani');                                 
elseif ((ri>=r3-12) && (ri<=r3+12)&&(gi>=g3-12) && (gi<=g3+12)&&(bi>=b3-12) && (bi<=b3+12))
    imshow(m6);title('10000 Tomani');                                  
elseif ((ri>=r4-12) && (ri<=r4+12)&&(gi>=g4-12) && (gi<=g4+12)&&(bi>=b4-12) && (bi<=b4+12))
    imshow(m6);title('50000 Tomani'); 
else
    disp('was not in database')
end














