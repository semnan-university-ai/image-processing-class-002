clc;
clear;
close all;
i_nam = 'paint6.jpg';
ax = imread(i_nam);
ax = im2double(ax);
figure;
subplot(111), imshow(ax), title('linear image');
[ysize,xsize] = size(ax);
cax = [fix(ysize/2)+1, fix(xsize/2)+1];
Fax = fft2(ax);
sFax = fftshift(Fax);
%subplot(234), showfft(sFax), title('FFT');
%remove horizontal lines
dcV = 3;
RW = 2;
r_VL = sFax;
r_VL(1:cax(1)-dcV, cax(2)-RW:cax(2)+RW)=0;
r_VL(cax(1)+dcV:end, cax(2)-RW:cax(2)+RW)=0;
%invers FFT
sFax_VL = ifftshift(r_VL);
iFax_VL = ifft2(sFax_VL);
subplot(111), imshow(iFax_VL), title('output image');
%subplot(234), showfft(r_VL), title('remove horizontal lines image');