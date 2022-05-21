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
%path har pic
fileList = fullfile(pwd, impath, {dirList.name});
for i=1:length(fileList)   %be tedade pic ha bayd run beshe 
    img = imread(fileList{i});
    img = rgb2gray(img);
    figure(i);
     subplot(1,2,1)
    imshow(img);
    title ('orginal pic')
    heimg = histeq(img);
    subplot(1,2,2)
    imshow(heimg);
    title ('Equalized Image')
end