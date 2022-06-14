function [] = morpho_line(img)

img = rgb2gray(imread(img));

SEd1 = strel('line',1,180);
SEe = strel('line',3,180);
SEd2 = strel('line',2,90);

imgers = imerode(img,SEe);
imgdil = imdilate(imgers,SEd1);
imgdil = imdilate(imgdil,SEd2);

noline = medfilt2(imgdil, [5 5], 'symmetric');
figure('Name', 'morpho_line'), subplot(1,2,1),imshow(img),title('original image');
subplot(1,2,2), imshow(noline),title('noline image');

end