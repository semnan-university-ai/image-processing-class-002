clear,clc,close all
test_money = imread('/Users/Ali/Desktop/image project/data/2000-b.jpeg');
[a,b] = size(test_money);
for i=1:14
add='/Users/Ali/Desktop/image project/data';
images=dir(fullfile(add,'*.jpeg'));
pet=numel(images(i));
image=images(i).name
raw=imread(fullfile(add,image));
resize_all = imresize(raw,[a,b/3]);
[test_R,test_G,test_B]=pre_processing(test_money);
[source_R,source_G,source_B]=pre_processing(resize_all);
for j=1:a
for k=1:(b/3)
out = manhatan_distance(source_R(j,k),test_R(j,k),source_G(j,k),test_G(j,k),source_B(j,k),test_B(j,k));
val_all(i)=mean(mean(out));
end
end
end
val=min(val_all);
if val==val_all(1)
     disp('the money is 1000 tomans');
elseif val==val_all(2)
     disp('the money is 1000 tomans');
elseif val==val_all(5)
     disp('the money is new_1000 tomans');
elseif val==val_all(6)
     disp('the money is new_1000 tomans');
elseif val==val_all(7)
    disp('the money is 2000 tomans');
elseif val==val_all(8)
     disp('the money is 2000 tomans');
elseif val==val_all(9)
  disp('the money is 5000 tomans');
elseif val==val_all(10)
     f disp('the money is 5000 tomans');
elseif val==val_all(3)
     disp('the money is 10000 tomans');
elseif val==val_all(4)
     disp('the money is 10000 tomans');
elseif val==val_all(11)
   disp('the money is 50000 tomans');
elseif val==val_all(12)
    disp('the money is 50000 tomans');
elseif val==val_all(13)
        disp('the money is new_50000 tomans');
elseif val==val_all(14)
     disp('the money is new_50000 tomans');
end
