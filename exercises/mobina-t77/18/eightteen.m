clc
clear all
close all

%showing bit plain of input picture
A=imread('Lenna.png');
A=rgb2gray(A)
A=double(A);
B=bitget(A,1);
figure();
subplot(2,4,1);imshow((B));title('Bit plane 1');
B=bitget(A,2);
subplot(2,4,2);imshow(B);title('Bit plane 2');
B=bitget(A,3);
subplot(2,4,3);imshow(B);title('Bit plane 3');
B=bitget(A,4);
subplot(2,4,4);imshow(B);title('Bit plane 4');
B=bitget(A,5);
subplot(2,4,5);imshow(B);title('Bit plane 5');
B=bitget(A,6);
subplot(2,4,6);imshow(B);title('Bit plane 6');
B=bitget(A,7);
subplot(2,4,7);imshow(B);title('Bit plane 7');
B=bitget(A,8);
subplot(2,4,8);imshow(B);title('Bit plane 8');

figure();

workspace;  % Make sure the workspace panel is showing.
fontSize = 12;
% Read in the image what will have another image hidden into it.
baseFileName='Lenna.png';
% baseFileName='Lenna.png';
folder = fullfile(matlabroot, '\toolbox\images\imdemos');
% Get the full filename, with path prepended.
fullFileName = fullfile(folder, baseFileName);
if ~exist(fullFileName, 'file')
  % Didn't find it there.  Check the search path for it.
  fullFileName = baseFileName; % No path this time.
  if ~exist(fullFileName, 'file')
    % Still didn't find it.  Alert user.
    errorMessage = sprintf('Error: %s does not exist.', fullFileName);
    uiwait(warndlg(errorMessage));
    return;
  end
end


originalImage = imread(fullFileName);
% Get the number of rows and columns in the original image.
[visibleRows visibleColumns numberOfColorChannels] = size(originalImage);
if numberOfColorChannels > 1
  % If it's color, extract the red channel.
  originalImage = originalImage(:,:,1);
end

% Display the original gray scale image.
subplot(3, 3, 4);
imshow(originalImage, []);
title('Original Grayscale Starting Image', 'FontSize', fontSize);
% Enlarge figure to full screen.
set(gcf, 'units','normalized','outerposition',[0 0 1 1]);
set(gcf,'name','Demo by ImageAnalyst','numbertitle','off') 
% read the message image you want to hide in the cover image
baseFileName='text.jpg';
% baseFileName='moon.tif';
% Get the full filename, with path prepended.
fullFileName = fullfile(folder, baseFileName);
if ~exist(fullFileName, 'file')
  % Didn't find it there.  Check the search path for it.
  fullFileName = baseFileName; % No path this time.
  if ~exist(fullFileName, 'file')
    % Still didn't find it.  Alert user.
    errorMessage = sprintf('Error: %s does not exist.', fullFileName);
    uiwait(warndlg(errorMessage));
    return;
  end
end


hiddenImage = imread(fullFileName);
% Get the number of rows and columns in the hidden image.
[hiddenRows hiddenColumns numberOfColorChannels] = size(hiddenImage);
if numberOfColorChannels > 1
  % If it's color, extract the red channel.
  hiddenImage = hiddenImage(:,:,1);
end

% Display the image.
subplot(3, 3, 1);
imshow(hiddenImage, []);
title('Image to be Hidden', 'FontSize', fontSize);
% Let's compute and display the histogram.
[pixelCount grayLevels] = imhist(hiddenImage);
subplot(3, 3, 2); 
bar(pixelCount);
title('Histogram of image to be hidden', 'FontSize', fontSize);
xlim([-10 grayLevels(end)]); % Scale x axis manually.
grid on;

% Display the histogram of first image .
[pixelCount2 grayLevels2] = imhist(originalImage);
subplot(3, 3, 5); 
bar(pixelCount2);
title('Histogram of first image ', 'FontSize', fontSize);
xlim([-10 grayLevels2(end)]); % Scale x axis manually.
grid on;
thresholdValue = 70;
binaryImage = hiddenImage < thresholdValue;

EqualizeOriginalImage = histeq(originalImage);
subplot(3, 3, 6);
imhist(EqualizeOriginalImage);
title('Histogram of Equalize Original Image ', 'FontSize', fontSize);

% Display the image.
subplot(3, 3, 3);
imshow(binaryImage, []);
caption = sprintf('Hidden Image Thresholded at %d', thresholdValue);
title(caption, 'FontSize', fontSize);

% Get the bit plane to hide the image in.
prompt = 'Enter the bit plane you want to hide the image in (1 - 8) ';
dialogTitle = 'Enter Bit Plane to Replace';
numberOfLines = 1;
defaultResponse = {'5'};
bitToSet = str2double(cell2mat(inputdlg(prompt, dialogTitle, numberOfLines, defaultResponse)));
% If image to be hidden is bigger than the original image, scale it down.
if hiddenRows > visibleRows || hiddenColumns > visibleColumns
  amountToShrink = min([visibleRows / hiddenRows, visibleColumns / hiddenColumns]);
  binaryImage = imresize(binaryImage, amountToShrink);
  % Need to update the number of rows and columns.
  [hiddenRows hiddenColumns] = size(binaryImage);
end


% Tile the hiddenImage, if it's smaller, so that it will cover the original image.
if hiddenRows < visibleRows || hiddenColumns < visibleColumns
  watermark = zeros(size(originalImage), 'uint8');
  for column = 1:visibleColumns
    for row = 1:visibleRows
      watermark(row, column) = binaryImage(mod(row,hiddenRows)+1, mod(column,hiddenColumns)+1);
    end
  end
  
  
  % Crop it to the same size as the original image.
  watermark = watermark(1:visibleRows, 1:visibleColumns);
else
  % Watermark is the same size as the original image.
  watermark = binaryImage;
end


% Set the bit of originalImage(a copy, actually) to the value of the watermark.
watermarkedImage=originalImage;
for column = 1:visibleColumns
  for row = 1:visibleRows
    watermarkedImage(row, column)=bitset(originalImage(row, column), bitToSet, watermark(row, column));
  end
end


% Display the image.
subplot(3, 3, 7);
imshow(watermarkedImage, []);
caption = sprintf('Final Watermarked Image');
title(caption, 'FontSize', fontSize);

% Display the histogram of merge pictures .
[pixelCount3 grayLevels3] = imhist(watermarkedImage);
subplot(3, 3, 8); 
bar(pixelCount3);
title('Histogram of merge pictures ', 'FontSize', fontSize);
xlim([-10 grayLevels2(end)]); % Scale x axis manually.
grid on;

EqualizeWatermarkedImage = histeq(watermarkedImage);
subplot(3, 3, 9);
imhist(EqualizeWatermarkedImage);
title('Histogram of Equalized Watermarked Image ', 'FontSize', fontSize)

 figure();
subplot(1, 2, 1);imshow(EqualizeWatermarkedImage);
title('Equalized Watermarked Image ', 'FontSize', fontSize)
subplot(1, 2, 2);imshow(EqualizeOriginalImage);
title('Equalized Original Image ', 'FontSize', fontSize)
