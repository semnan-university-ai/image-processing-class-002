
clc;
clear;
close all;



   [filename,path] = uigetfile({'*.jpg';'*.jpeg';},...
                          'Select an Image File');

  img=imread([path filename]);




  
compare_image(img);


function compare_image(input_img)

imSize=[295,600];
folder='train';
dirImg=dir(fullfile(folder,'*.jpg'));

allFileName={};
allMatchPoint=[];


if(size(input_img,1)>size(input_img,2))
    check_img=imresize(input_img,[NaN 295]);    % check image= vorodi
else
    check_img=imresize(input_img,[295 NaN]);
end


    
    for k=1:numel(dirImg)
        filename=fullfile(folder,dirImg(k).name);
        trainImg=imread(filename);

        
        a=imresize(trainImg,imSize); %Input image is resized here
        a1=a(:,:,1); %Red component
        a2=mean2(a1); %Mean of Red component
        a3=a(:,:,2); %Green component
        a4=mean2(a3); 
        a5=a(:,:,3); %Blue component
        a6=mean2(a5); 
        
        
        % ////////////////////////////////
        
        I1=check_img(:,:,1);
        I2=mean2(I1);
        I3=check_img(:,:,2);
        I4=mean2(I3);
        I5=check_img(:,:,3);
        I6=mean2(I5);
        
                
        
        if(abs(a2-I2) < 150 && abs(a4-I4) < 150 && abs(a6-I6) < 150)
%          if(true)   
            a=rgb2gray(a);
            b=rgb2gray(check_img);
            
            apoints = detectKAZEFeatures(a,'Diffusion','region');
            bpoints = detectKAZEFeatures(b,'Diffusion','region');
            
            
            [features1,valid_points1] = extractFeatures(a,apoints);
            [features2,valid_points2] = extractFeatures(b,bpoints);
            
            
            [indexPairs matchMetric] = matchFeatures(features1, features2) ;
            
            matchedPoints1 = valid_points1(indexPairs(:,1),:);
            matchedPoints2 = valid_points2(indexPairs(:,2),:);
            
            
            allMatchPoint=[allMatchPoint size(matchedPoints1,1)];
            allFileName=[allFileName filename];
            
            
        end
        
        
    end
    

[~,index]=max(allMatchPoint);

cashAmount =str2double(regexp(allFileName{index}, '\d+', 'match'));


a=imread(allFileName{index});
a=im2gray(a);


apoints = detectKAZEFeatures(a,'Diffusion','region');
bpoints = detectKAZEFeatures(b,'Diffusion','region');


[features1,valid_points1] = extractFeatures(a,apoints);
[features2,valid_points2] = extractFeatures(b,bpoints);

[indexPairs matchMetric] = matchFeatures(features1, features2) ;

matchedPoints1 = valid_points1(indexPairs(:,1),:);
matchedPoints2 = valid_points2(indexPairs(:,2),:);

figure; ax = axes;
showMatchedFeatures(a,b,matchedPoints1,matchedPoints2,'montage','Parent',ax);
title(ax,strcat('your money is  ',string(cashAmount),' toman'));
legend(ax, 'orginal imaage','test image');  % strcat neveshtane chand chiz dar plot
end