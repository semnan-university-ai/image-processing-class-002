function [ Rinf,Ginf,Binf ] = RGB( Im )
 
R=Im(:,:,1);
G=Im(:,:,2);
B=Im(:,:,3);
 
RAve=mean(mean(R));
GAve=mean(mean(G));
BAve=mean(mean(B));
 
Rmed=median(median(R));
Gmed=median(median(G));
Bmed=median(median(B));
 
Rinf=[RAve Rmed];
Ginf=[GAve Gmed];
Binf=[BAve Bmed];
 
end