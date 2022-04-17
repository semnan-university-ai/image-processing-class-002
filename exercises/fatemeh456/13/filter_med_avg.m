function img = filter_med_avg(image) 

img = imread(image);
img = im2gray(img);
med = medfilt2(img,[7 7]);
avg = imboxfilt(img,7);
figure,
subplot(221);imshow(med);title('median');
subplot(222);imshow(avg);title('mean');

end
