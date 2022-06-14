function [] = fft_paint(img)
%clc;
%close all;
%clear;

img = imread(img);

img_s = size(img);
temp = size(img_s);
if (temp(2)>2)
    img = rgb2gray(img);
end

mm = fft2(double(img));
mms = fftshift(mm);

main = log10(1+abs(mms));
phase = angle(mms);

figure('Name', 'Part 1', 'NumberTitle', 'off', 'MenuBar', 'none');
colormap('gray');
subplot(2,2,1);
imagesc(img);
title('Original Image');

subplot(2,2,2);
imagesc(main);
title('Log Maganitude of FFT of');
	
subplot(2,2,3);
imagesc(phase);
title('Phase of FFT');
	
%mms(1:img_s(1,1), img_s(1,2)/2-10:img_s(1,2)/2+10) = 0;
%mms(img_s(1,1)/2-10:img_s(1,1)/2+10 , 1:img_s(1,2)) = 0;

for i = 1 : img_s(1)
    if (i > round(img_s(1)/2-20) && i < round(img_s(1)/2+20))
        continue;
    end
    for j = round(img_s(2)/2-4) : round(img_s(2)/2+4)
        mms(i,j) = 0;
    end
end

noline = ifft2(ifftshift(mms));


mm = fft2(noline);
mms = fftshift(mm);

subplot(2,2,4);
mms = log(1+ abs(mms));
imagesc(mms)

figure('Name', 'fft_paint'), imshow(uint8(noline)),title('noline image');

end