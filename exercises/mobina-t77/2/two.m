clc;
clear;
close all;

% % predefined- function
%  img1 =imread('boat.png');
%  B = padarray(img1,[1  1],'symmetric')
 
% %  test in smaller scale
% a =[1 2 4 5 7 9; 3 4 6 2 3 5 ; 5 6 8 0 9 8; 7 8 9 6 5 4 ]
% B = padarray(a,[1  1],'symmetric')

% % main way
image=imread('peppers.png'); 
img1 = im2gray(image);
figure;imshow(img1);
title('orginal image');

[row,column]=size(img1);
img2=zeros(row+2 ,column+2 );
[rowp,columnp]=size(img2);



for i=2:rowp-1
    for j=2:columnp-1
        img2(i,j)= img1(i-1,j-1);
    end
end

%above padding
for i=1
    for j=2 : columnp-1
        img2(i,j)= img1(i,j-1);   
    end
end   

%right padding
for i=2 : rowp-1
    for j=columnp
        img2(i,j)= img1(i-1,j-2); 
    end
end 

%down padding
for i=rowp
    for j=2 : columnp-1
            img2(i,j)= img1(i-2,j-1); 
    end
end    

%left padding
for i=2 : rowp-1
    for j=1
        img2(i,j)= img1(i-1,j); 
    end
end 

% img1
% img2
figure;imshow(img2);
title('padded image');

