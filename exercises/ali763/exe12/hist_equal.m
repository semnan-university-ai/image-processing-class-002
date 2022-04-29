clear,clc,close all
for im_num=1:12
    im=sprintf('/Users/Ali/Desktop/7sin/%d.jpg',im_num);
    ims=imread(im);
    gray=rgb2gray(ims);
    hist_equal=histeq(gray);
    figure(13);
    subplot(12,1,im_num)
    histogram(gray);
    hold on
    subplot(12,1,im_num)
    imhist(gray);
    figure(im_num);
    imshowpair(gray,hist_equal,'montage');
end
