clc;
clear;
close all;

a = [ 2 4 6 8 10 5 11 12 123 5 ];
mysize = size(a);
mysize = mysize(1,2);
%min(a)
%max(a)
%mean(a)

miangin = 0;
for i = 1 : mysize
    miangin = miangin + a(i);
end

miangin / mysize

mean(a)