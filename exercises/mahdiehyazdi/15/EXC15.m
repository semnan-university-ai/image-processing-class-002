clc;
clear all;
close;

img = imread('./Image1.jpg');
x_img=size(img,1);
y_img=size(img,2);

for i=1:x_img
    for j=1:y_img
        result(i,j)=(img(i,j,1)*0.299)+(img(i,j,2)*0.567)+(img(i,j,3)*0.134);
    end
end
imshow(result);