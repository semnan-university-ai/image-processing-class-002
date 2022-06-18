function [kol] = printresult(data_stract,txtreal,kol)
%PRINTRESULT Summary of this function goes here
%   Detailed explanation goes here

    N=length(data_stract);
    disp('_______________on channel hue in histogram');
    tempp=cell2mat(reshape({data_stract.hphDmean},[1,N]));
    MinVal=min(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO";end
    if data_stract(yy).txt==txtreal kol.hphM_Y=kol.hphM_Y+1; else kol.hphM_N=kol.hphM_N+1;end
    disp("mean hist = "+data_stract(yy).txt+"  "+lbl+"  Y="+string(kol.hphM_Y)+"  N="+string(kol.hphM_N));

    tempp=cell2mat(reshape({data_stract.hphDvar},[1,N]));
    MinVal=min(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.hphV_Y=kol.hphV_Y+1; else kol.hphV_N=kol.hphV_N+1;end
    disp("variance hist= "+data_stract(yy).txt+"  "+lbl+"  Y="+string(kol.hphV_Y)+"  N="+string(kol.hphV_N));

    tempp=cell2mat(reshape({data_stract.hphSmean},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.hphMn_Y=kol.hphMn_Y+1; else kol.hphMn_N=kol.hphMn_N+1;end
    disp("mean normal hist= "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.hphMn_Y)+"  N="+string(kol.hphMn_N));

    tempp=cell2mat(reshape({data_stract.hphSvar},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.hphVn_Y=kol.hphVn_Y+1; else kol.hphVn_N=kol.hphVn_N+1;end
    disp("variance normal hist = "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.hphVn_Y)+"  N="+string(kol.hphVn_N));

    tempp=cell2mat(reshape({data_stract.hphcov},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.hphCo_Y=kol.hphCo_Y+1; else kol.hphCo_N=kol.hphCo_N+1;end
    disp("covariance hist= "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.hphCo_Y)+"  N="+string(kol.hphCo_N));

%     tempp=cell2mat(reshape({data_stract.hphssim},[1,N]));
%     MinVal=max(tempp);
%     [~,yy]=find(tempp==MinVal);
%     disp("SSIM = "+string(data_stract(yy).txt));
    
    disp(' ');
    disp('_______________on channel hue dirction');
    tempp=cell2mat(reshape({data_stract.cphDmean},[1,N]));
    MinVal=min(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.cphM_Y=kol.cphM_Y+1; else kol.cphM_N=kol.cphM_N+1;end
    disp("mean imageHSV= "+data_stract(yy).txt+"  "+lbl+"  Y="+string(kol.cphM_Y)+"  N="+string(kol.cphM_N));

    tempp=cell2mat(reshape({data_stract.cphDvar},[1,N]));
    MinVal=min(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.cphV_Y=kol.cphV_Y+1; else kol.cphV_N=kol.cphV_N+1;end
    disp("variance imageHSV= "+data_stract(yy).txt+"  "+lbl+"  Y="+string(kol.cphV_Y)+"  N="+string(kol.cphV_N));

    tempp=cell2mat(reshape({data_stract.cphSmean},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.cphMn_Y=kol.cphMn_Y+1; else kol.cphMn_N=kol.cphMn_N+1;end
    disp("mean normal imageHSV= "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.cphMn_Y)+"  N="+string(kol.cphMn_N));


    tempp=cell2mat(reshape({data_stract.cphSvar},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.cphVn_Y=kol.cphVn_Y+1; else kol.cphVn_N=kol.cphVn_N+1;end
    disp("variance normal imageHSV = "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.cphVn_Y)+"  N="+string(kol.cphVn_N));
    
    tempp=cell2mat(reshape({data_stract.cphcov},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.cphCo_Y=kol.cphCo_Y+1; else kol.cphCo_N=kol.cphCo_N+1;end
    disp("covariance imageHSV= "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.cphCo_Y)+"  N="+string(kol.cphCo_N));

    
    disp(' ');
    disp('_______________SSIM on channels HSV and RGB');
    tempp=cell2mat(reshape({data_stract.ssim_hh},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.ssimHh_Y=kol.ssimHh_Y+1; else kol.ssimHh_N=kol.ssimHh_N+1;end
    disp("SSIM = "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.ssimHh_Y)+"  N="+string(kol.ssimHh_N));

    tempp=cell2mat(reshape({data_stract.ssim_hs},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.ssimSh_Y=kol.ssimSh_Y+1; else kol.ssimSh_N=kol.ssimSh_N+1;end
    disp("SSIM Sturation histo= "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.ssimSh_Y)+"  N="+string(kol.ssimSh_N));

%     tempp=cell2mat(reshape({data_stract.ssim_hv},[1,N]));
%     MinVal=max(tempp);
%     [~,yy]=find(tempp==MinVal);
%     disp("SSIM ssim_hv= "+string(data_stract(yy).txt));
    

    tempp=cell2mat(reshape({data_stract.ssim_h},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.ssimH_Y=kol.ssimH_Y+1; else kol.ssimH_N=kol.ssimH_N+1;end
    disp("SSIM Hue= "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.ssimH_Y)+"  N="+string(kol.ssimH_N));
    
    tempp=cell2mat(reshape({data_stract.ssim_s},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.ssimS_Y=kol.ssimS_Y+1; else kol.ssimS_N=kol.ssimS_N+1;end
    disp("SSIM Saturation= "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.ssimS_Y)+"  N="+string(kol.ssimS_N));
    
    tempp=cell2mat(reshape({data_stract.ssim_v},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.ssimV_Y=kol.ssimV_Y+1; else kol.ssimV_N=kol.ssimV_N+1;end
    disp("SSIM Value = "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.ssimV_Y)+"  N="+string(kol.ssimV_N));
    
    tempp=cell2mat(reshape({data_stract.ssim_rgb},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    if data_stract(yy).txt==txtreal kol.ssim_Y=kol.ssim_Y+1; else kol.ssim_N=kol.ssim_N+1;end
    disp("SSIM = "+string(data_stract(yy).txt)+"  "+lbl+"  Y="+string(kol.ssim_Y)+"  N="+string(kol.ssim_N));

    
end

