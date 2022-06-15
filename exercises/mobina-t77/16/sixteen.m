clc;
close all;
clear;

new_x_value = 256;
new_y_value = 256;
img1 = imread("peppers.png");


img1 = imresize(img1, [new_x_value new_y_value]);
image_size = size(img1);
img4 = zeros(image_size);
  
%%%%%%%%%%%%%%%%%%%%%first method
for i = 1 : new_x_value
    for j = 1 : new_y_value 
        for k = 1 : 3
            
            if img1(i, j, k) < 51 && img1(i, j, k) >=0
                
                if (round(img1(i,j,k))) < (51 - 25)
                img4(i, j, k) = 0;
                else
                img4(i, j, k) = 51; 
                end
                
            elseif img1(i, j, k) < 102 && img1(i, j, k) >= 51
                
                if (round(img1(i,j,k))) < (102 - 25)
                img4(i, j, k) = 51;
                else
                img4(i, j, k) = 102; 
                end

            elseif img1(i, j, k) < 153 && img1(i, j, k) >= 102
                
                if (round(img1(i,j,k))) < (153 - 25)
                img4(i, j, k) = 102;
                else
                img4(i, j, k) = 153; 
                end

            elseif img1(i, j, k) < 204 && img1(i, j, k) >= 153 
                
                if ((round(img1(i,j,k)))) < (204 - 25)
                img4(i, j, k) = 153;
                else
                img4(i, j, k) = 204; 
                end

            elseif img1(i, j, k) <255 && img1(i, j, k) >= 204
                
                if (round(img1(i,j,k))) < (255 - 25)
                img4(i, j, k) = 204;
                else
                img4(i, j, k) = 255; 
                end

            else
                
               img4(i, j, k) = 255;

            end
            
        end
        
    end
end

%%%%%%%%%%%%%%%%%%%%%second method

% % Red of rgb scale
% for i=1 : new_x_value
%     for j=1 : new_y_value
%         if img1(i,j,1)< 25
%             img4(i,j,1)= 0;
%         elseif img1(i,j,1) < 76
%             img4(i,j,1)=51;
%         elseif img1(i,j,1)< 127
%             img4(i,j,1)= 102;
%         elseif img1(i,j,1) < 178
%             img4(i,j,1)=153;
%         elseif img1(i,j,1)< 229
%             img4(i,j,1)= 204;
%         else
%             img4(i,j,1)=255;
%         end        
%     end
% end
% 
% 
% % Green of rgb scale
% for i=1 : new_x_value
%     for j=1 : new_y_value
%         if img1(i,j,2)< 25
%             img4(i,j,2)= 0;
%         elseif img1(i,j,2) < 76
%             img4(i,j,2)=51;
%         elseif img1(i,j,2)< 127
%             img4(i,j,2)= 102;
%         elseif img1(i,j,2) < 178
%             img4(i,j,2)=153;
%         elseif img1(i,j,2)< 229
%             img4(i,j,2)= 204;
%         else
%             img4(i,j,2)=255;
%         end        
%     end
% end
% 
% % Blue of rgb scale
% for i=1 : new_x_value
%     for j=1 : new_y_value
%         if img1(i,j,3)< 25
%             img4(i,j,3)= 0;
%         elseif img1(i,j,3) < 76
%             img4(i,j,3)=51;
%         elseif img1(i,j,3)< 127
%             img4(i,j,3)= 102;
%         elseif img1(i,j,3) < 178
%             img4(i,j,3)=153;
%         elseif img1(i,j,3)< 229
%             img4(i,j,3)= 204;
%         else
%             img4(i,j,3)=255;
%         end        
%     end
% end
% 



figure, imshow(img1);title('orginal - image')
figure, imshow(uint8(img4));title('true color - image')