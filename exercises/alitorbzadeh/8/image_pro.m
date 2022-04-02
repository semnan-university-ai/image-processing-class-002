function [output]=image_pro(a,b)
r=randi([0,255],a,b);
r=uint8(r);
output=r;
end