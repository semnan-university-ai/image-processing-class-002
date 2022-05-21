clear,clc,close all
for im_num=1:12
    im=sprintf('/Users/Ali/Desktop/7sin/%d.jpg',im_num);
    ims=imread(im);
    gray=rgb2gray(ims);
    im_noise=imnoise(gray,'salt & pepper',0.3);
    h = fspecial('average',[7 7]);
    average_filter = imfilter(im_noise,h);
    figure(im_num);
    imshowpair(im_noise,average_filter,'montage');
end
