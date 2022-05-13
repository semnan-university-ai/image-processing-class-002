function crop = crop_func(img,xi,yi,xj,yj)
img = imread(img);
crop = img(xi:xj, yi:yj, :);

%figure, imshowpair(img, crop, 'montage');
figure;
subplot(1,2,1), imshow(img), title('Original Image');
subplot(1,2,2), imshow(crop), title('Croped Image');

end