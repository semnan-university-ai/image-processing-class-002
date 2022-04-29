
clc;
close all;
clear;

path='C:\Users\Mobina\Desktop\term 4\tamrin -hal-tamrin\13';
folder=dir(fullfile(path,'*.jpg'));

for num=1:12
    picture=fullfile(path,folder(num).name);
    img1=imread(picture);

% %   test with peppers
%  img1=imread('peppers.png');

img2 = rgb2gray(img1);


img3 = padarray(img2,[1  1],'symmetric');
img4 = padarray(img3,[1  1],'symmetric');
img5 = padarray(img4,[1  1],'symmetric');

[row,column] = size(img5);
img8=img5;


% mean7*7

img6=zeros;

for i=4:(row-3)
    for j=4:(column-3)
        total = double(img5(i,j)) + ...
                double(img5(i,j+1)) + double(img5(i,j+2)) + double(img5(i,j+3))+ double(img5(i,j-1)) + double(img5(i,j-2)) + double(img5(i,j-3)) + ...
                double(img5(i+1,j)) + double(img5(i+2,j)) + double(img5(i+3,j))+ double(img5(i-1,j)) + double(img5(i-2,j)) + double(img5(i-3,j)) + ...
                double(img5(i+1,j+1)) + double(img5(i+1,j+2)) + double(img5(i+1,j+3))+ double(img5(i+1,j-1)) + double(img5(i+1,j-2)) + double(img5(i+1,j-3)) + ...
                double(img5(i-1,j+1)) + double(img5(i-1,j+2)) + double(img5(i-1,j+3))+ double(img5(i-1,j-1)) + double(img5(i-1,j-2)) + double(img5(i-1,j-3)) + ...
                double(img5(i+2,j+1)) + double(img5(i+2,j+2)) + double(img5(i+2,j+3))+ double(img5(i+2,j-1)) + double(img5(i+2,j-2)) + double(img5(i+2,j-3)) + ...
                double(img5(i-2,j+1)) + double(img5(i-2,j+2)) + double(img5(i-2,j+3))+ double(img5(i-2,j-1)) + double(img5(i-2,j-2)) + double(img5(i-2,j-3)) + ...
                double(img5(i+3,j+1)) + double(img5(i+3,j+2)) + double(img5(i+3,j+3))+ double(img5(i+3,j-1)) + double(img5(i+3,j-2)) + double(img5(i+3,j-3)) + ...
                double(img5(i-3,j+1)) + double(img5(i-3,j+2)) + double(img5(i-3,j+3))+ double(img5(i-3,j-1)) + double(img5(i-3,j-2)) + double(img5(i-3,j-3)) ;
            
                img6(i-3,j-3)= double(total/49) ;
                total = 0;
    end
end

result1=mat2gray(img6);

figure, imshow(img1);title('orginal color image');
figure, imshow(img2);title(' gray-scale image  ');

figure, imshow(result1);title('mean filtered image');


% median 7*7

img7 = zeros;

for i=4:(row-3)
    for j=4:(column-3)
       list_total = [double(img5(i,j)) , ...
                double(img5(i,j+1)) , double(img5(i,j+2)) , double(img5(i,j+3)) , double(img5(i,j-1)) , double(img5(i,j-2)) , double(img5(i,j-3)) , ...
                double(img5(i+1,j)) , double(img5(i+2,j)) , double(img5(i+3,j)) , double(img5(i-1,j)) , double(img5(i-2,j)) , double(img5(i-3,j)) , ...
                double(img5(i+1,j+1)) , double(img5(i+1,j+2)) , double(img5(i+1,j+3)) , double(img5(i+1,j-1)) , double(img5(i+1,j-2)) , double(img5(i+1,j-3)) , ...
                double(img5(i-1,j+1)) , double(img5(i-1,j+2)) , double(img5(i-1,j+3)) , double(img5(i-1,j-1)) , double(img5(i-1,j-2)) , double(img5(i-1,j-3)) , ...
                double(img5(i+2,j+1)) , double(img5(i+2,j+2)) , double(img5(i+2,j+3)) , double(img5(i+2,j-1)) , double(img5(i+2,j-2)) , double(img5(i+2,j-3)) , ...
                double(img5(i-2,j+1)) , double(img5(i-2,j+2)) , double(img5(i-2,j+3)) , double(img5(i-2,j-1)) , double(img5(i-2,j-2)) , double(img5(i-2,j-3)) , ...
                double(img5(i+3,j+1)) , double(img5(i+3,j+2)) , double(img5(i+3,j+3)) , double(img5(i+3,j-1)) , double(img5(i+3,j-2)) , double(img5(i+3,j-3)) , ...
                double(img5(i-3,j+1)) , double(img5(i-3,j+2)) , double(img5(i-3,j+3)) , double(img5(i-3,j-1)) , double(img5(i-3,j-2)) , double(img5(i-3,j-3))] ;
            
                   sorted_list_total = sort(list_total);
                   median = sorted_list_total(25);
                   img7(i,j)= double(median);
                   sorted_list_total=[0];
     end
end
    

end

result2=mat2gray(img7);

figure, imshow(result2);title('median filtered image');
    
