clc
clear all
close all

image=imread('benchmark/Lenna.png');
hiddenImage=imread('benchmark/text.jpg');
image=rgb2gray(image); 
hiddenImage=rgb2gray(hiddenImage); 

bitplane8 = zeros(size(image));
new_image = uint8(zeros(size(image)));

image_histogram = zeros(1,256);
image_histogram_eq = zeros(1,256);
new_image_histogram = zeros(1,256);
new_image_histogram_eq = zeros(1,256);

[row,col,chan] = size(image);
[hrow,hcol,hchan] = size(hiddenImage);

threshold = 150;
hiddenImage = hiddenImage < threshold;

for i = 1 : row
    for j = 1 : col
        binary = de2bi(image(i,j),8);
        bitplane8(i,j) = binary(8);
    end
end
figure(1), imshow(double(bitplane8)); title('bit plane 8');



if hrow > row || hcol > col
    scale = min([row/hrow,col/hcol]);
    hiddenImage  = imresize(hiddenImage ,scale);
    [hrow, hcol] = size(hiddenImage);
end


if hrow < row || hcol < col
    wm = zeros(size(image),'uint8');
    for i = 1:row
        for j =1:col
            wm(i,j)=hiddenImage(mod(i,hrow)+1,mod(j,hcol)+1);
        end
    end
    hiddenImage = wm(1:row,1:col);  
 end

wmImage = image;
for i= 1:row
    for j = 1:col
        for k=1:3
        wmImage(i,j,k) = bitset(image(i,j),1,hiddenImage(i,j));
        end
    end
end

figure(2); imshow(wmImage); title('Watermarked Image');


for i = 1:1:row
    for j = 1:1:col
        new_image(i,j) = bitand(image(i,j),240);
    end
end
figure(3), imshow(new_image);title('compressed image');


for i=1:row
   for j=1:col
       z=image(i,j);
       image_histogram(z+1)=image_histogram(z+1)+1;
   end
end

for i=1:row
   for j=1:col
       z=new_image(i,j);
       new_image_histogram(z+1)=new_image_histogram(z+1)+1;
   end
end

figure(4);
subplot(1,2,1);
grayLevels = 0 : 255;
bar(grayLevels, image_histogram);
xlabel('Gray Level'); ylabel('Pixel Count');
title('original Image histogram');
grid on;

subplot(1,2,2);
bar(grayLevels, new_image_histogram);
xlabel('Gray Level'); ylabel('Pixel Count');
title('compressed image histogram');
grid on;

image_histeq=histogram_equalization(image);
new_image_histeq=histogram_equalization(new_image);
figure(5);
subplot(1,2,1); imshow(image_histeq); title('original Image histogram equalization');
subplot(1,2,2); imshow(new_image_histeq); title('compressed image histogram equalization');

for i=1:row
   for j=1:col
       z=image_histeq(i,j);
       image_histogram_eq(z+1)=image_histogram_eq(z+1)+1;
   end
end

for i=1:row
   for j=1:col
       z=new_image_histeq(i,j);
       new_image_histogram_eq(z+1)=new_image_histogram_eq(z+1)+1;
   end
end

figure(6);
subplot(1,2,1);
grayLevels = 0 : 255;
bar(grayLevels, image_histogram_eq);
xlabel('Gray Level'); ylabel('Pixel Count');
title('original Image histogram after histogram equalization');
grid on;

subplot(1,2,2);
bar(grayLevels, new_image_histogram_eq);
xlabel('Gray Level'); ylabel('Pixel Count');
title('compressed image histogram after histogram equalization');
grid on;
