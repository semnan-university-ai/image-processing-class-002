clc;
clear all;
close all;

folder='D:\Uni\images';
I=dir(fullfile(folder,'*.jpg'));

for k=1:numel(I)
    filename=fullfile(folder,I(k).name);
    image=imread(filename);
     
    image=rgb2gray(image); 
    p=floor(7/2);
    pad=uint8(zeros(size(image)+2*p));
        
    result_image_mean=uint8(zeros(size(image))); 
    result_image_median=uint8(zeros(size(image)));  



    for x=1:size(image,1)
         for y=1:size(image,2)
              pad(x+p,y+p)=image(x,y); 
         end
    end
  
    for x=1:size(result_image_mean,1)
         for y=1:size(result_image_mean,2)
                result = 0;
                sum = 0;

                sum = double(pad(x + (p-3),y + (p-3))) + double(pad(x + (p-3),y + (p-2))) + double(pad(x + (p-3),y + (p-1))) + double(pad(x + (p-3),(y+p)))  + double(pad(x + (p-3),y + (p+1))) + double(pad(x + (p-3),y + (p+2))) + double(pad(x + (p-3),y + (p+3))) ...  
                    + double(pad(x + (p-2),y + (p-3))) + double(pad(x + (p-2),y + (p-2))) + double(pad(x + (p-2),y + (p-1))) + double(pad(x + (p-2),(y+p)))  + double(pad(x + (p-2),y + (p+1))) + double(pad(x + (p-2),y + (p+2))) + double(pad(x + (p-2),y + (p+3))) ...
                    + double(pad(x + (p-1),y + (p-3))) + double(pad(x + (p-1),y + (p-2))) + double(pad(x + (p-1),y + (p-1))) + double(pad(x + (p-1),(y+p)))  + double(pad(x + (p-1),y + (p+1))) + double(pad(x + (p-1),y + (p+2))) + double(pad(x + (p-1),y + (p+3))) ...
                    + double(pad((x+p) ,y + (p-3)))    + double(pad((x+p),y + (p-2)))     + double(pad((x+p),y + (p-1)))     + double(pad((x+p),(y+p)))      + double(pad((x+p),y + (p+1)))     + double(pad((x+p),y + (p+2)))     + double(pad((x+p),y + (p+3))) ... 
                    + double(pad(x + (p+1),y + (p-3))) + double(pad(x + (p+1),y + (p-2))) + double(pad(x + (p+1),y + (p-1))) + double(pad(x + (p+1),(y+p)))  + double(pad(x + (p+1),y + (p+1))) + double(pad(x + (p+1),y + (p+2))) + double(pad(x + (p+1),y + (p+3))) ...
                    + double(pad(x + (p+2),y + (p-3))) + double(pad(x + (p+2),y + (p-2))) + double(pad(x + (p+2),y + (p-1))) + double(pad(x + (p+2),(y+p)))  + double(pad(x + (p+2),y + (p+1))) + double(pad(x + (p+2),y + (p+2))) + double(pad(x + (p+2),y + (p+3))) ...
                    + double(pad(x + (p+3),y + (p-3))) + double(pad(x + (p+3),y + (p-2))) + double(pad(x + (p+3),y + (p-1))) + double(pad(x + (p+3),(y+p)))  + double(pad(x + (p+3),y + (p+1))) + double(pad(x + (p+3),y + (p+2))) + double(pad(x + (p+3),y + (p+3)));

                result = floor(sum/49);
                result_image_mean(x,y)= result;

         end
    end

    figure,imshow(result_image_mean),title('mean filter - ' + string(k));

    for x=1:size(result_image_median,1)
             for y=1:size(result_image_median,2)
                   result_number = 0;
                   median = 0;

                   pixel_list = [double(pad(x + (p-3),y + (p-3)))   double(pad(x + (p-3),y + (p-2)))   double(pad(x + (p-3),y + (p-1)))   double(pad(x + (p-3),(y+p)))    double(pad(x + (p-3),y + (p+1)))   double(pad(x + (p-3),y + (p+2)))   double(pad(x + (p-3),y + (p+3))) ...  
                                 double(pad(x + (p-2),y + (p-3)))   double(pad(x + (p-2),y + (p-2)))   double(pad(x + (p-2),y + (p-1)))   double(pad(x + (p-2),(y+p)))    double(pad(x + (p-2),y + (p+1)))   double(pad(x + (p-2),y + (p+2)))   double(pad(x + (p-2),y + (p+3))) ...
                                 double(pad(x + (p-1),y + (p-3)))   double(pad(x + (p-1),y + (p-2)))   double(pad(x + (p-1),y + (p-1)))   double(pad(x + (p-1),(y+p)))    double(pad(x + (p-1),y + (p+1)))   double(pad(x + (p-1),y + (p+2)))   double(pad(x + (p-1),y + (p+3))) ...
                                 double(pad((x+p) ,y + (p-3)))      double(pad((x+p),y + (p-2)))       double(pad((x+p),y + (p-1)))       double(pad((x+p),(y+p)))        double(pad((x+p),y + (p+1)))       double(pad((x+p),y + (p+2)))       double(pad((x+p),y + (p+3))) ... 
                                 double(pad(x + (p+1),y + (p-3)))   double(pad(x + (p+1),y + (p-2)))   double(pad(x + (p+1),y + (p-1)))   double(pad(x + (p+1),(y+p)))    double(pad(x + (p+1),y + (p+1)))   double(pad(x + (p+1),y + (p+2)))   double(pad(x + (p+1),y + (p+3))) ...
                                 double(pad(x + (p+2),y + (p-3)))   double(pad(x + (p+2),y + (p-2)))   double(pad(x + (p+2),y + (p-1)))   double(pad(x + (p+2),(y+p)))    double(pad(x + (p+2),y + (p+1)))   double(pad(x + (p+2),y + (p+2)))   double(pad(x + (p+2),y + (p+3))) ...
                                 double(pad(x + (p+3),y + (p-3)))   double(pad(x + (p+3),y + (p-2)))   double(pad(x + (p+3),y + (p-1)))   double(pad(x + (p+3),(y+p)))    double(pad(x + (p+3),y + (p+1)))   double(pad(x + (p+3),y + (p+2)))   double(pad(x + (p+3),y + (p+3))) ];

                   median = sort(pixel_list);
                   result_number = median(25);
                   result_image_median(x,y)= result_number;

             end
    end       
    figure,imshow(result_image_median),title('median filter - ' + string(k));

end

                 
