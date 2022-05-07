clc;
clear all;
close;


A=imread('monarch.png');
x=size(A,1);
y=size(A,2);
for i = 1 : x
    for j = 1 : y
        for n = 1 : 3
  
            if (A(i, j, n) <= 51 && A(i, j, n) >= 0)
                if (A(i, j, n) <= 25)
                   A(i, j, n) = 0;
                else
                   A(i, j, n) = 51;
                end
                
            elseif (A(i, j, n) <= 102)
                if (A(i, j, n) <= 76)
                   A(i, j, n) = 51;
                else
                   A(i, j, n) = 102;
                end
                
            elseif (A(i, j, n) <= 153)
                if (A(i, j, n) <= 127)
                   A(i, j, n) = 102;
                else
                   A(i, j, n) = 153;
                end   
                
            elseif (A(i, j, n) <= 204) 
                if (A(i, j, n) <= 178)
                   A(i, j, n) = 153;
                else
                   A(i, j, n) = 204;
                end
            
            elseif (A(i, j, n) <= 255)
                if (A(i, j, n) <= 229)
                   A(i, j, n) = 204;
                else
                   A(i, j, n) = 255;
                end
            
            end
            
        end
        
    end
end

imshow(A)