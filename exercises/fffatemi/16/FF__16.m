close all;
clear;
clc;

IMG1 = im2double(imread('How-to-store-fruit-to-keep-it-fresh-resized.jpg'));
subplot(1,2,1) , imshow(IMG1) , title('RGB')

[R,C,N]=size(IMG1);

New_IMG1 = zeros(size(IMG1,1),size(IMG1,2),3);

for i=1:R
   for j=1:C

       X=IMG1(i,j,:);
       
       New_IMG1(i,j,1)=max(X);
       New_IMG1(i,j,2)=max(X);
       New_IMG1(i,j,3)=max(X);
       
   end
end

subplot(122),imshow(New_IMG1),title('True Color')
