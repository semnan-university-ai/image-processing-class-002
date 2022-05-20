function [input1, input2] = changesize(input1,input2)

input1 = imread(input1);
input2 = imread(input2);
[x, y] = size(input1);
%[w ,z] = size(input2);


input2 = imresize(input2, [x ,y]);
input1 = imresize(input1, [x, y]);
end

%figure, imshow(I);
%figure, imshow(II);