function finalResult = histogram_equalization(image)

finalResult = uint8(zeros(size(image)));
frequncy = zeros(256,1);
cdf = zeros(256,1);
result = zeros(256,1);
sum =0;

for x = 1:size(image,1)
    for y = 1:size(image,2)
        value = image(x,y);
        frequncy(value+1) = frequncy(value+1)+1;
    end
end
    
    
for x = 1:size(cdf)
    sum =sum +frequncy(x);
    cdf(x) = sum;
end

    
for x = 1:size(result)
    result(x) =round((((cdf(x)- min(cdf))/(max(cdf)-min(cdf))))*255);
end
        
 
for x = 1:size(image,1)
    for y = 1:1:size(image,2)
        finalResult(x,y) = result(image(x,y) + 1);
    end
end
    
end