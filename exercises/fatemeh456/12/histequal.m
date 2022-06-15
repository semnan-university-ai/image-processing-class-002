function img = histequal(image) 

img = imread(image);
img = rgb2gray(img);
heq = histeq(img);
figure,
subplot(221);imshow(img);title('Original Image');
subplot(222);imshow(heq);title('Equalized Image');

end