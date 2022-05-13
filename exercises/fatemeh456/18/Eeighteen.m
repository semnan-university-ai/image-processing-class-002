clc;
clear;
close all;

%Bit Plane 8
cover = imread('Lenna.png');
cover = rgb2gray(cover); 
cover = double(cover);
bitplane8 = mod(floor(cover/128), 2);
figure(1), imshow(bitplane8);title('Bit Plane 8');

cover=imread('Lenna.png');
[x1,y1,~] = size(cover);
sum1 = 0;
for i =1 : 500
    for j = 1 : 500
        sum1 = sum1 + double(cover(i, j));
    end
end
Origial_image = sum1 / (500*500)
figure (2),imshow('Lenna.png');

msg=imread('text.jpg');

%Get the R component
cover1=cover(:,:,1);
cover1=bitand(cover1,248);
msg1=msg(:,:,1);
shiftmsg3=bitshift(msg1,-5);
cover1 =bitor(cover1,shiftmsg3);

%Get the G component
cover2=cover(:,:,2);
cover2=bitand(cover2,248);
msg2=msg(:,:,2);
shiftmsg3=bitshift(msg2,-5);
cover2=bitor(cover2,shiftmsg3);

%Get the B component
cover3=cover(:,:,3);
cover3=bitand(cover3,248);
msg3=msg(:,:,3);
shiftmsg3=bitshift(msg3,-5);
cover3=bitor(cover3,shiftmsg3);

cover(:,:,1)=cover1;
cover(:,:,2)=cover2;
cover(:,:,3)=cover3;
stego=cover;
imshow(stego);

sum2 = 0;
for i =1 : 500
    for j = 1 : 500
        sum2 = sum2 + double(cover(i, j));
    end
end
Stego_image = sum2 / (500*500)
figure (3),imshow(stego);

%Resize
[x2,y2,~] = size(stego);
if x2 > x1 || y2 > y1
    scale = min([x1/x2,y1/y2]);
    msg  = imresize(msg ,scale);
    [x2,y2,~] = size(msg);
end
img = double(img);
bitplane8 = mod(floor(img/128), 2);
figure(1), imshow(bitplane8);title('Bit Plane 8');

%Hide an image in another image
img2 = imread('text.jpg');
img2 = rgb2gray(img2); 
cover1=img(:,:,1);
%set least 3bit zeros
cover1=bitand(cover1,248);
%let secret image bytes shift right by 5 bits
msg1=img2(:,:,1);
shiftmsg3=bitshift(msg1,-5);
%hiding
cover1 =bitor(cover1,shiftmsg3);
%Get the G component
cover2=img(:,:,2);
%set least 3bit zeros
cover2=bitand(cover2,248);
%let secret image bytes shift right by 5 bits
msg2=img2(:,:,2);
shiftmsg3=bitshift(msg2,-5);
%hiding
cover2=bitor(cover2,shiftmsg3);
%Get the B component
cover3=img(:,:,3);
%set least 3bit zeros
cover3=bitand(cover3,248);
%let secret image bytes shift right by 5 bits
msg3=img2(:,:,3);
shiftmsg3=bitshift(msg3,-5);
%hiding
cover3=bitor(cover3,shiftmsg3);
%save
stego=img;
img(:,:,1)=cover1;
img(:,:,2)=cover2;
img(:,:,3)=cover3;
figure(2),imshow(img);

%compression
image = imread('Lenna.png'); 
[m,n,p] = size(image)
for i = 1:m
    for j = 1:n
        for k = 1:p
            new_image(i,j,k) = bitand(image(i,j,k),224);
        end
    end
end
figure(3), imshow(new_image); title('compressed image');
