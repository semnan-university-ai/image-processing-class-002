function [output]=wightSQ(input,m)
if size(input,2)< m
    disp("WRONG!!!!")
    disp("---------")
    disp("m has to be smaller than length of input")
else
    if size(input,3)~=1
        input=rgb2gray(input);
        row=size(input,1);
        col=size(input,2);
        q=randi([1,(col-m-1)]);
        s=randi([1,(row-m-1)]);
        for i0=q:m+q
            for i1=s:m+s
                input(i1,i0)=255;
            end
        end
    else
    end
end
output=input;
end