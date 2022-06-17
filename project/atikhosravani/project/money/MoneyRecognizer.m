function []=MoneyRecognizer(F)
pwd
currentFolder = pwd;
im=imread (strcat(currentFolder,'\data\2.jpg'));
figure (11)

subplot(1,2,1)
imshow (im)
% title (' Inpute Image','color','b','FontSize', 12);  
title([ 'Inpute {\color{blue}Image}']);
im=rgb2gray(im); 
fg=fspecial ('gaussian', 15, 0.00000000001);
kx=imfilter(im, fg);
[p,q]=imhist(kx);
subplot(1,2,2)
 imhist (kx)
title ([ 'Inpute {\color{blue}Image}' ]);

if F(:,1)==p
    disp('2000 tomani')
      uicontrol('Style', 'text', 'String', 'Result:2000 tomani ',...
           'FontSize', 11,...
          'foregroundcolor','r',...
   'Position', [70,20,200,20]);

      
elseif F(:,2)==p
    disp('5000 tomani')
     uicontrol('Style', 'text', 'String', 'Result:5000 tomani ',...
           'FontSize', 11,...
          'foregroundcolor','r',...
   'Position', [70,20,200,20]);

elseif F(:,3)==p
    disp('10000 tomani')
     uicontrol('Style', 'text', 'String', 'Result:10000 tomani ',...
           'FontSize', 11,...
          'foregroundcolor','r',...
   'Position', [70,20,200,20]);

elseif F(:,4)==p
    disp('50000 tomani')
     uicontrol('Style', 'text', 'String', 'Result:50000 tomani ',...
           'FontSize', 11,...
          'foregroundcolor','r',...
   'Position', [70,20,200,20]);

elseif F(:,5)==p
    disp('100000 tomani')
     uicontrol('Style', 'text', 'String', 'Result:100000 tomani ',...
           'FontSize', 11,...
          'foregroundcolor','r',...
   'Position', [70,20,200,20]);


else 
    disp('No detect')
             
end
end
     


