clear all;
close all;
clc;

%%Making trainsets

trainsets_image = imread('10000-d.jpg');
[m,n] = size(trainsets_image);


money_1000_a  = imread('1000-a.jpg');
money_1000_b  = imread('1000-b.jpg');
money_1000_c  = imread('1000-c.jpg');


money_2000_a  = imread('2000-a.jpg');
money_2000_b  = imread('2000-b.jpg');
money_2000_c  = imread('2000-c.jpg');

money_5000_a  = imread('5000-a.jpg');
money_5000_b  = imread('5000-b.jpg');
money_5000_c  = imread('5000-c.jpg');

money_10000_a  = imread('10000-a.jpg');
money_10000_b  = imread('10000-b.jpg');
money_10000_c  = imread('10000-c.jpg');


%resize
money_1000_a  = imresize(money_1000_a ,[m,n/3]);
money_1000_b  = imresize(money_1000_b ,[m,n/3]);
money_1000_c  = imresize(money_1000_c ,[m,n/3]);

money_2000_a  = imresize(money_2000_a ,[m,n/3]);
money_2000_b  = imresize(money_2000_b ,[m,n/3]);
money_2000_c  = imresize(money_2000_c ,[m,n/3]);

money_5000_a  = imresize(money_5000_a ,[m,n/3]);
money_5000_b  = imresize(money_5000_b ,[m,n/3]);
money_5000_c  = imresize(money_5000_c ,[m,n/3]);

money_10000_a  = imresize(money_10000_a ,[m,n/3]);
money_10000_b  = imresize(money_10000_b ,[m,n/3]);
money_10000_c  = imresize(money_10000_c ,[m,n/3]);



%using prepare function
[trainsets_we_R,trainsets_we_G,trainsets_we_B]=Prepare(trainsets_image);

[money_1000_a_R,money_1000_a_G,money_1000_a_B]=Prepare(money_1000_a);
[money_1000_b_R,money_1000_b_G,money_1000_b_B]=Prepare(money_1000_b);
[money_1000_c_R,money_1000_c_G,money_1000_c_B]=Prepare(money_1000_c);

[money_2000_a_R,money_2000_a_G,money_2000_a_B]=Prepare(money_2000_a);
[money_2000_b_R,money_2000_b_G,money_2000_b_B]=Prepare(money_2000_b);
[money_2000_c_R,money_2000_c_G,money_2000_c_B]=Prepare(money_2000_c);

[money_5000_a_R,money_5000_a_G,money_5000_a_B]=Prepare(money_5000_a);
[money_5000_b_R,money_5000_b_G,money_5000_b_B]=Prepare(money_5000_b);
[money_5000_c_R,money_5000_c_G,money_5000_c_B]=Prepare(money_5000_c);

[money_10000_a_R,money_10000_a_G,money_10000_a_B]=Prepare(money_10000_a);
[money_10000_b_R,money_10000_b_G,money_10000_b_B]=Prepare(money_10000_b);
[money_10000_c_R,money_10000_c_G,money_10000_c_B]=Prepare(money_10000_c);





%% Subtracting  money1000-a  from trainset
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_1000_a_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_1000_a_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_1000_a_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_1000_a = mean(mean(out));

%% Subtracting money1000-b from trainsets 
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_1000_b_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_1000_b_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_1000_b_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_1000_b = mean(mean(out));

%% Subtracting  money1000-c from trainsets 
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_1000_c_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_1000_c_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_1000_c_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_1000_c = mean(mean(out));



%% Subtracting  money2000-a from trainsets 
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_2000_a_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_2000_a_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_2000_a_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_2000_a = mean(mean(out));

%% Subtracting  money2000-b from trainsets 
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_2000_b_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_2000_b_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_2000_b_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_2000_b = mean(mean(out));

%% Subtracting  money2000-c from trainsets 
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_2000_c_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_2000_c_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_2000_c_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_2000_c = mean(mean(out));

%% Subtracting  money5000-a from trainsets 
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_5000_a_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_5000_a_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_5000_a_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_5000_a = mean(mean(out));

%% Subtracting  money5000-b from trainsets 
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_5000_b_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_5000_b_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_5000_b_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_5000_b = mean(mean(out));

%% Subtracting  money5000-c from trainsets 
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_5000_c_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_5000_c_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_5000_c_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_5000_c = mean(mean(out));

%% Subtracting  money10000-a from trainsets 
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_10000_a_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_10000_a_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_10000_a_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_10000_a = mean(mean(out));

%% Subtracting  money10000-b from trainsets 
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_10000_b_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_10000_b_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_10000_b_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_10000_b = mean(mean(out));

%% Subtracting  money10000-c from trainsets 
outR=zeros(m,n/3);
outG=zeros(m,n/3);
outB=zeros(m,n/3);

for i=1:m
    for k=1:(n/3)
        outR(i,k) = trainsets_we_R(i,k) - money_10000_c_R(i,k);
        outG(i,k) = trainsets_we_G(i,k) - money_10000_c_G(i,k);
        outB(i,k) = trainsets_we_B(i,k) - money_10000_c_B(i,k);
    end
end

out = sqrt( outR.^2 + outG.^2 + outB.^2); val_10000_c = mean(mean(out));
%%
% RECOGNITION
[val_1000_a val_1000_b val_1000_c val_2000_a val_2000_b val_2000_c val_5000_a val_5000_b val_5000_c val_10000_a val_10000_b val_10000_c ];
value = min( [val_1000_a val_1000_b val_1000_c val_2000_a val_2000_b val_2000_c val_5000_a val_5000_b val_5000_c val_10000_a val_10000_b val_10000_c ]);

if value==val_1000_a
     fprintf('The input was recognized as 1000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
elseif value==val_1000_b
     fprintf('The input was recognized as 1000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
elseif value==val_1000_c
     fprintf('The input was recognized as 1000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
elseif value==val_2000_a
     fprintf('The input was recognized as 2000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
elseif value==val_2000_b
     fprintf('The input was recognized as 2000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
elseif value==val_2000_c
     fprintf('The input was recognized as 2000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
elseif value==val_5000_a
     fprintf('The input was recognized as 5000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
elseif value==val_5000_b
     fprintf('The input was recognized as 5000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
elseif value==val_5000_c
     fprintf('The input was recognized as 5000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
elseif value==val_10000_a
     fprintf('The input was recognized as 10000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
elseif value==val_10000_b
     fprintf('The input was recognized as 10000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
elseif value==val_10000_c
     fprintf('The input was recognized as 10000 Tomans\n');
     imshow(trainsets_image);title('recognize money')
end 