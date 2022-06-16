 
Im=imread('C:\Users\s.ali.motavally\Desktop\esknas\CD\train\1t.jpg');
[ RAve10000,GAve10000,BAve10000] = RGB( Im );
F10000=[ RAve10000,GAve10000,BAve10000];
clear RAve10000 GAve10000 BAve10000
 
Im=imread('C:\Users\s.ali.motavally\Desktop\esknas\CD\train\2t.jpg');
[ RAve20000,GAve20000,BAve20000] = RGB( Im );
F20000=[ RAve20000,GAve20000,BAve20000];
clear RAve20000 GAve20000 BAve20000
 
Im=imread('C:\Users\s.ali.motavally\Desktop\esknas\CD\train\50t.jpg');
[ RAve500000,GAve500000,BAve500000] = RGB( Im );
F500000=[ RAve500000,GAve500000,BAve500000];
clear RAve500000 GAve500000 BAve500000

Im=imread('C:\Users\s.ali.motavally\Desktop\esknas\CD\train\100t.jpg');
[ RAve1000000,GAve1000000,BAve1000000] = RGB( Im );
F1000000=[ RAve1000000,GAve1000000,BAve1000000];
clear RAve1000000 GAve1000000 BAve1000000
  
 clear Im
 save Data
