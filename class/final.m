
clc;
clear all;
close all;

img = imread('peppers.png');
img = rgb2gray(img);
imshow(img);title(' orginal image ');
figure;
imhist(img);title(' histo orginal image ');
figure;
A=img;
%A =[1 2 3 ;4 5 6 ;7 8 9 ;10 11 12 ;13 14 15];
[row , column] = size(A);

D=[]; % LINEAR MATRIX
C=A ; % TOTALY FLIPPED MATRIX
B=A ; % COPY OF ORGINAL MATRIX

C=flip(A,2); % FLIP TOTAL MATRIX A

% MIX ORGINAL MATRIX A WITH FLIPPED ONE C.
for i=2:2:row
    for j=1:column
        A(i,j)=C(i,j);
    end
end
        
%LINEAR MATRIX WITH ZIGZAG AND D is our result.
count=1;%counter of our linear matrix D
for i=1:row
    for j=1:column
        D(count)=A(i,j);
        count = count +1;
    end
end

NewD = D; %make a copy of orginal calculated matrix D which  
Group1 = [0:7];
Group2 = [8:15];
Group3 = [16:31];
Group4 = [32:63];
Group5 = [64:127];
Group6 = [128:255];

%%PVD CALCULATION

%string calc from bin to decimal
dataa = "111100100011101010000101110000110000111111101000110000010010001111110010000010001010101110011001"
dataaa=convertStringsToChars(dataa)
sizedataaa = size(dataaa)
for i=1:4:sizedataaa(2)
    bin                   = [dataaa(i) dataaa(i+1) dataaa(i+2) dataaa(i+3)];
    str                   = convertCharsToStrings(bin);
    dec( (round(i/4)+1) ) = bin2dec(str);
end

%put 2 cells together to hide data in 
counter =1;% dec counter
for i=1:2:((sizedataaa(2))/2)%because we have to go 2cells ahead in each round totaly we divide the size  to 2
    sub=D(i+1)-D(i);
    data =dec(counter);
    counter= counter+1;
   %check the sub of the 2 cells belong to which 6 groups.
    if ismember(abs(sub),Group1)
        subb=Group1(1)+data;
        secondsub = D(i+1)-subb;
        NewD(i) = secondsub;
    
    elseif ismember(abs(sub),Group2)
        subb=Group2(1)+data;
        secondsub = D(i+1)-subb;
        NewD(i) = secondsub;
    elseif ismember(abs(sub),Group3)
        subb=Group3(1)+data;
        secondsub = D(i+1)-subb;
        NewD(i) = secondsub;
    elseif ismember(abs(sub),Group4)
        subb=Group4(1)+data;
        secondsub = D(i+1)-subb;
        NewD(i) = secondsub;
    elseif ismember(abs(sub),Group5)
        subb=Group5(1)+data;
        secondsub = D(i+1)-subb;
        NewD(i) = secondsub;
    else
        subb=Group6(1)+data;
        secondsub = D(i+1)-subb;
        NewD(i) = secondsub;
    end

end

%LINEAR MATRIX TO 2d matrix 
m=1;
for i=1:row
    for j=1:column
        finall(i,j)=NewD(m);
        m = m +1;
    end
end

flipfinal = flip(finall,2);
for i=1:2:row
    for j=1:column
        flipfinal(i,j)=finall(i,j);
    end
end
Output=uint8(flipfinal);
%Output1=mat2gray(Output);
Output1=Output;
imshow(Output1);title(' final image ');
figure;
imhist(Output1);title(' histo final image ');

%%output is final image

%SUM INPUT AND OUTPUT
SumOrginal = sum( B , 'all' ) 
SumOutput  = sum( Output1 , 'all' )

%SIZE INPUT & OUTPUT
size(B)
size(Output1)

%mse
mse = immse(B,Output1)
psnr = psnr(Output1,B)
