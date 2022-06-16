
function [ y ] = Averaging( x )

x_avg=mean(mean(x));
y=double(x)-x_avg;

end

