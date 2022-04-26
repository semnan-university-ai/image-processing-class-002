clc;
clear all;
close all;

folder='D:\Uni\images';
I=dir(fullfile(folder,'*.jpg'));

for k=1:numel(I)
    filename=fullfile(folder,I(k).name);
    image=imread(filename);
     
    finalResult = uint8(zeros(size(image)));
    frequncy = zeros(256,1);
    pdf = zeros(256,1);
    cdf = zeros(256,1);
    cummlative = zeros(256,1);
    result = zeros(256,1);
    sum =0;

    for x = 1:size(image,1)
        for y = 1:size(image,2)
            val = image(x,y);
            frequncy(val+1) = frequncy(val+1)+1;
            pdf(val+1) = frequncy(val+1)/(size(image,1)*size(image,2));
        end
    end

    for x = 1:size(pdf)
        sum =sum +frequncy(x);
        cummlative(x) = sum;
        cdf(x) = cummlative(x)/ (size(image,1)*size(image,2));
        result(x) = round(cdf(x) * 255);
    end


    for x = 1:size(image,1)
        for y = 1:1:size(image,2)
            finalResult(x,y) = result(image(x,y) + 1);
        end
    end
    
    subplot(1,2,1),imshow(image),title('original image -' + string(k));
    subplot(1,2,2),imshow(finalResult),title('histogram equalization - ' + string(k));

end

                 
