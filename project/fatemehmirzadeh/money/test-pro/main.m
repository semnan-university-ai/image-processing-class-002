clc;
close all;
clear;
myFolder = 'C:\Users\central\Desktop\money\train';
filePattern1 = fullfile(myFolder,'*.jpeg');
theFiles = dir(filePattern1);
alphabet = zeros(25,25,length(theFiles));
Filelength=length(theFiles);
key = zeros(3,Filelength);
Face = strings(1,Filelength);
for k = 1 : Filelength
    baseFileName = theFiles(k).name;
    fullFileName = fullfile(theFiles(k).folder, baseFileName);
    [folder, baseFileNameNoExt, extension] = fileparts(fullFileName);
    fprintf(1, 'Now reading %s\n', fullFileName);
    
    image=imread(fullFileName);
    image=imresize(image,[256 256]);
    image = histeq(image);
    R=mean(image(:,:,1),'all');
    G=mean(image(:,:,2),'all');
    B=mean(image(:,:,3),'all');
    L=string(baseFileNameNoExt);
    Face(k)= L;
    key(:,k) = [R G B]; 
    
    disp("R : "+R+", G : "+G+", B : "+B);
end
ImageTest = imread('C:\Users\central\Desktop\money\test\3.jpg');
ImageTest = histeq(ImageTest);
ImageTest=imresize(ImageTest,[256 256]);
imshow(ImageTest);
R=mean(ImageTest(:,:,1),'all');
G=mean(ImageTest(:,:,2),'all');
B=mean(ImageTest(:,:,3),'all');
Test = [R G B];
NumberOfPaper = size(key);
Number=NumberOfPaper(1,2);
Error=zeros(1,Number);
for o=1 : Number
    for p=1:3
        Error(o)=Error(o)+(key(p,o)- Test(p))^2;
    end    
end
[M,I] = min(Error);
disp("It's a : " + Face(I));
