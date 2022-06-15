clear,clc,close all
for im_num=1:12
    im=sprintf('/Users/Ali/Desktop/7sin/%d.jpg',im_num);
    ims=imread(im);
    gray=rgb2gray(ims);
    im_noise=imnoise(gray,'salt & pepper',0.5);
    median_filter = medfilt2(gray,[7 7]);
    figure(im_num);
    imshowpair(im_noise,median_filter,'montage');
end
