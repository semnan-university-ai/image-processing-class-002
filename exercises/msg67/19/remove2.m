clear;
close all;
clc;
%........................

format long g;
format compact;
fontSize = 20;
%--------------------------------------------------------------------------------------------------------
%    READ IN IMAGE
grayImage =imread("khat.jpg");

%--------------------------------------------------------------------------------------------------------
% Display the image.
subplot(2, 2, 1);
imshow(grayImage, []);
axis('on', 'image');
title('Original Image', 'FontSize', fontSize, 'Interpreter', 'None');
impixelinfo;
hFig = gcf;
hFig.WindowState = 'maximized'; % May not work in earlier versions of MATLAB.
drawnow;

% ta alan faghat neshan daddddddddddd


% Get the dimensions of the image.
% numberOfColorChannels should be = 1 for a gray scale image, and 3 for an RGB color image.
[rows, columns, numberOfColorChannels] = size(grayImage)
if numberOfColorChannels > 1
	% It's not really gray scale like we expected - it's color.
	% Extract the red channel (so the magenta lines will be white).
	grayImage = grayImage(:, :, 2);
end



% Crop off white frame.
mask = bwareafilt(grayImage < 255, 1);
props = regionprops(mask, 'BoundingBox');
subplot(2, 2, 2);
grayImage = imcrop(grayImage, props.BoundingBox);
imshow(grayImage);
axis('on', 'image');
title('Gray Scale Image', 'FontSize', fontSize, 'Interpreter', 'None');
impixelinfo;
drawnow;
subplot(2, 2, 3);
imhist(grayImage);
grid on;
xlabel('Gray Level', 'FontSize', fontSize);
ylabel('Pixel Count', 'FontSize', fontSize);

% ta inja namayesh 3gane rangi, GrayScale va Histogram


% Interactively threshold the image.
lowThreshold = 10;
highThreshold = 151;



mask = grayImage < highThreshold;
% Find out areas.
% props = regionprops(mask, 'Area');
% allAreas = sort([props.Area], 'Descend')
subplot(2, 2, 4);

% Keep areas only if they're bigger than n pixels...
% ...and less than m pixels, according to the input.'
mask = bwareafilt(mask, [10, 1290]);
imshow(mask);


[labeledImage, numberOfBlobs] = bwlabel(mask, 8);
% Apply a variety of pseudo-colors to the regions.
% coloredLabelsImage = label2rgb (labeledImage, 'hsv', 'k', 'shuffle');
% % Display the pseudo-colored image.
% imshow(coloredLabelsImage);
caption = sprintf('Final Mask');
title(caption, 'FontSize', fontSize);
