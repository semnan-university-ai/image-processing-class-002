function [output]=negetive(input)
a=size(input,1);
b=size(input,2);
c=size(input,3);
if c~=1
    input=rgb2gray(input);
    for i0=1:floor(a/2)
        for i1=1:b
            input(i0,i1)=255-input(i0,i1);
        end
    end
else
    for i0=1:floor(a/2)
        for i1=1:b
            input(i0,i1)=255-input(i0,i1);
        end
    end
end
output=input;
end
