function histeqResult = histogrameq(image)
image = imread(image);
image = rgb2gray(image);
[rows columns] = size(image);
finalResult = uint8(zeros(rows,columns));
pixelNumber = rows*columns;
frequncy = zeros(256,1);
pdf = zeros(256,1);
cdf = zeros(256,1);
cummlative = zeros(256,1);
outpic = zeros(256,1);
for i = 1:1:rows
    for j = 1:1:columns
        val = image(i,j);
        frequncy(val+1) = frequncy(val+1)+1;
        pdf(val+1) = frequncy(val+1)/pixelNumber;
    end
end

sum =0 ;
intensityLevel = 255;

for i = 1:1:size(pdf)
    sum = sum + frequncy(i);
    cummlative(i) = sum;
    cdf(i) = cummlative(i)/ pixelNumber;
    outpic(i) = round(cdf(i) * intensityLevel);
end


for i = 1:1:rows
    for j = 1:1:columns
        finalResult(i,j) = outpic(image(i,j) + 1);
    end
end
imshow(finalResult);
end