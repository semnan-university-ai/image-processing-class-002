function [R,G,B]=pre_processing(image)  
R=image(:,:,1);
G=image(:,:,2);
B=image(:,:,3);

x_avg=mean(mean(R));
R=double(R)-x_avg;
x_avg=mean(mean(G));
G=double(G)-x_avg;
x_avg=mean(mean(B));
B=double(B)-x_avg;

x_max=max(max(R));
R=R./x_max;
x_max=max(max(G));
G=G./x_max;
x_max=max(max(B));
B=B./x_max;
end
