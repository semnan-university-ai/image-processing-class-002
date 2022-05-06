clc,clear,close
img= imread("peppers.png");
for i=1:size(img,1);
for j=1:size(img,2);
    im(i,j)=(img(i,j,1)*(0.299)+img(i,j,2)*(0.587)+img(i,j,3)*(0.114));
end
end
subplot(2,1,1)
imshow(img)
title('RGB');
subplot(2,1,2)
imshow(im)
title('gray scale');
