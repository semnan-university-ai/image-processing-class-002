clc;
clear all ;
close all;

%reading image and showing cordinates
my_img = imread('boat.png');
figure,imshow(my_img), title('orginal image');impixelinfo();

%getting value from user
disp('enter the rows and coloumns value to crop the image:')
row_start=input('row start:');
row_end=input('row end:');
column_start=input('column start:');
column_end=input('column end:');

%cropping image
cropped_img = my_img(row_start:row_end,column_start:column_end,:);
figure,imshow(cropped_img), title('cropped image');impixelinfo(); 
hold on;