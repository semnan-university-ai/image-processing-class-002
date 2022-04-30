clc
clear all
close all
% makane faile zakhire sazi pic ha
impath='pic';
%entekhab pic ha
dirList = dir(fullfile(impath,'*.jpg'));
disp(dirList);
%chek kardan vojode ax
if length(dirList) == 0
	error('chizi peyda nashod, tanzimat ro check befarmayid!');
end
% tari fuc min and median
fmin= @(x) min(x(:));
fmedian= @(x) median(x(:));
%path har pic
fileList = fullfile(pwd, impath, {dirList.name});
for i=1:length(fileList)   %be tedade pic ha bayd run beshe 
    img = imread(fileList{i});
    img = rgb2gray(img);
    minpic= nlfilter(img,[7 7],fmin);
    medpic= nlfilter(img,[7 7],fmedian);
    gapic = imnoise(img,'gaussian');
        gaminpic= nlfilter(gapic,[7 7],fmin);
        gamedpic= nlfilter(gapic,[7 7],fmedian);
    sppic= imnoise(img,'salt & pepper',0.02);
        spminpic= nlfilter(sppic,[7 7],fmin);
        spmedpic= nlfilter(sppic,[7 7],fmedian);
    figure(i);
     subplot(3,3,1)
       imshow(img);
       title ('orginal pic')
     subplot(3,3,2)
       imshow(minpic);
       title ('min Image')
     subplot(3,3,3)
       imshow(medpic);
       title ('median Image')
     subplot(3,3,4)
       imshow(gapic);
       title ('gaussian Image')
     subplot(3,3,5)
       imshow(gaminpic);
       title ('ga min Image')
     subplot(3,3,6)
       imshow(gamedpic);
       title ('ga median  Image')
     subplot(3,3,7)
       imshow(sppic);
       title ('salt and pepper Image')
     subplot(3,3,8)
       imshow(spminpic);
       title ('sp min Image')
     subplot(3,3,9)
       imshow(spmedpic);
       title ('sp median Image')
       
       
    
end