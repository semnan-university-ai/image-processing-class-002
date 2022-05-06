clc,clear,close;
img=imread('peppers.png');
for i=1:size(img,1)
for j=1:size(img,2)
for z=1:size(img,3)
 % pixels between 0 to 50 
if img(i,j,z)<51 && img(i,j,z)>=0
if img(i,j,z)<=25
   img(i,j,z)=0;
else
   img(i,j,z)=51;
end
  % pixels between 51 to 101               
elseif img(i,j,z)<102 && img(i,j,z)>=51
if img(i,j,z)<=76
   img(i,j,z)=51;
else
   img(i,j,z)=102;
end
  % pixels between 102 to 152 
elseif img(i,j,z)<153 && img(i,j,z)>=102
if img(i,j,z)<=127
   img(i,j,z)=102;
else
   img(i,j,z)=153;
end   
 % pixels between 153 to 204                
elseif img(i,j,z)<204 && img(i,j,z)>=153 
if img(i,j,z)<=178
   img(i,j,z)=153;
else
   img(i,j,z)=204;
end
 % pixels between 205 to 254            
elseif img(i,j,z)>255 && img(i,j,z)>=204
if img(i,j,z)<=229
   img(i,j,z)=204;
else
   img(i,j,z)=255;
end
 % pixels equal 255            
else
   img(i,j,z)=255;
end           
end      
end
end
figure,imshow(img);
