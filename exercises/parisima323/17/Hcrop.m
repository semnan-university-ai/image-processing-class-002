function Cimg= Hcrop(img,x1,y1,x2,y2)
[x,y,z]= size (img);
fprintf(['x1 bayed beyn 0_',num2str(x),'va y1 bayd beyn 0_',num2str(y),'bashad \n *** \n ']);
x1= input('x1 mokhtasat shoro ');
y1= input('y1 mokhtasat shoro ');
fprintf(['\n x2 bayed beyn ',num2str(x1),'_',num2str(x),'va y2 bayd beyn ',num2str(y1),'_',num2str(y),'bashad \n *** \n ']);
x2= input('x2 mokhtasat payan ');
y2= input('y2 mokhtasat payan ');
Cimg= img(x1:x2,y1:y2,:);
end