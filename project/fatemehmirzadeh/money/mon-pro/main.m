clc;
close all;
clear;
myFolder = 'C:\Users\central\Desktop\money\train';
filePattern1 = fullfile(myFolder,'**/*.jpg');
theFiles = dir(filePattern1);
Filelength=length(theFiles);
key = zeros(3,Filelength);
Face = strings(1,Filelength);
%train
disp("TRAIN: ")
for k = 1 : Filelength
    baseFileName = theFiles(k).name;
    fullFileName = fullfile(theFiles(k).folder, baseFileName);
    [folder ,baseFileNameNoExt, extension] = fileparts(fullFileName);
    foldersplit=regexp(folder,'\','split');
    fprintf(1, 'Now reading %s\n', fullFileName);
     
    image=imread(fullFileName);
    image = histeq(image);
    image=imresize(image,[200 400]); 
    
    R=mean(image(:,:,1),'all');
    G=mean(image(:,:,2),'all');
    B=mean(image(:,:,3),'all');
    L=string(foldersplit(1,length(foldersplit)));
    Face(k)= L;
    key(:,k) = [R G B]; 
    %imshow(image);
    disp("R : "+R+", G : "+G+", B : "+B);
end
%test
disp("TEST: ")
myFolder2 = 'C:\Users\central\Desktop\money\test\3.jpg';
filePattern2 = fullfile(myFolder2,'**/*.jpeg');
theFiles = dir(filePattern2);
Filelength2=length(theFiles);
Tru=0;
Fals=0;
for k = 1 : Filelength2
    baseFileName = theFiles(k).name;
    fullFileName = fullfile(theFiles(k).folder, baseFileName);
    [folder ,baseFileNameNoExt, extension] = fileparts(fullFileName);
    foldersplit=regexp(folder,'\','split');
    fprintf(1, 'Now reading %s\n', fullFileName);
      
    ImageTest=imread(fullFileName);
    image = histeq(image);
    ImageTest=imresize(ImageTest,[200 400]);
   
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
    L=string(foldersplit(1,length(foldersplit)));
    [M,I] = min(Error);
    %disp("It's a : " + Face(I));
    
    if Face(I) == L 
        Tru=Tru+1;
        disp("True");
    else
        Fals=Fals+1;
        disp("False");
    end    
end
disp("Accuracy : %" + string(Tru/(Tru+Fals)*100));


