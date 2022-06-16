clear
%%Prepare banknotes and patterns
main_money = imread('money-dataset\2000-a.jpg');
[m,n] = size(main_money);
for i=1:14
img='C:\Users\User\Documents\MATLAB\money recognition\codes\codes\money-dataset';
fullimg=dir(fullfile(img,'\*.jpg*'));
pet=numel(fullimg(i));
image=fullimg(i).name
raw_image=imread(fullfile(img,image));
resize_iamge = imresize(raw_image,[m,n/3]);
[main_money_R,main_money_G,main_money_B]=Prepare(main_money);
[pat_R,pat_G,pat_B]=Prepare(resize_iamge);

for j=1:m
    for k=1:(n/3)
out = sqrt((main_money_R(j,k)-pat_R(j,k)).^2 +...
        (main_money_G(j,k) - pat_G(j,k)).^2 +...
        (main_money_B(j,k) - pat_B(j,k)).^2);
   val_all(i) = mean(mean(out));
    end
end
end


value=min(val_all);

if value==val_all(1)
     fprintf('The banknote was recognized 1000 Tomans\n');
elseif value==val_all(2)
     fprintf('The banknote was recognized 1000 Tomans\n');
elseif value==val_all(5)
     fprintf('The banknote was recognized 1000_new Tomans\n');
elseif value==val_all(6)
     fprintf('The banknote was recognized 1000_new Tomans\n');
elseif value==val_all(7)
     fprintf('The banknote was recognized 2000 Tomans\n');
elseif value==val_all(8)
     fprintf('The banknote was recognized 2000 Tomans\n');
elseif value==val_all(9)
     fprintf('The banknote was recognized 5000 Tomans\n');
elseif value==val_all(10)
     fprintf('The banknote was recognized 5000 Tomans\n');
elseif value==val_all(3)
     fprintf('The banknote was recognized 10000 Tomans\n');
elseif value==val_all(4)
     fprintf('The banknote was recognized 10000 Tomans\n');
elseif value==val_all(11)
     fprintf('The banknote was recognized 50000 Tomans\n');
elseif value==val_all(12)
     fprintf('The banknote was recognized 50000 Tomans\n');
elseif value==val_all(13)
     fprintf('The banknote was recognized 50000_new Tomans\n');
elseif value==val_all(14)
     fprintf('The banknote was recognized 50000_new Tomans\n');


end

