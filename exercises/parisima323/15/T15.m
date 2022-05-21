clc;
close all;
clear all;

pic= imread('onion.png');
[x,y,z] = size(pic);
for i=1:x
  for j=1:y
      Npic(i,j) = (pic(i,j,1)*0.299 + pic(i,j,2)*0.577 + pic(i,j,3)*0.144);
  end
end
subplot (1,2,1);imshow(pic);
subplot (1,2,2);imshow(uint8(Npic));