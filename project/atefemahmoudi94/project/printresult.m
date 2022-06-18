function [kol] = printresult(data_stract,txtreal)
%PRINTRESULT Summary of this function goes here
%   Detailed explanation goes here

    N=length(data_stract);
    disp('_______________on channel hue in histogram');
    tempp=cell2mat(reshape({data_stract.hphDmean},[1,N]));
    MinVal=min(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO";end
    disp("mean hist = "+data_stract(yy).txt+"  "+lbl);

    tempp=cell2mat(reshape({data_stract.hphDvar},[1,N]));
    MinVal=min(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    disp("variance hist= "+data_stract(yy).txt+"  "+lbl);

    tempp=cell2mat(reshape({data_stract.hphSmean},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    disp("mean normal hist= "+string(data_stract(yy).txt)+"  "+lbl);

    tempp=cell2mat(reshape({data_stract.hphSvar},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    disp("variance normal hist = "+string(data_stract(yy).txt)+"  "+lbl);

    tempp=cell2mat(reshape({data_stract.hphcov},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    disp("covariance hist= "+string(data_stract(yy).txt)+"  "+lbl);

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
    disp("mean imageHSV= "+data_stract(yy).txt+"  "+lbl);

    tempp=cell2mat(reshape({data_stract.cphDvar},[1,N]));
    MinVal=min(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    disp("variance imageHSV= "+data_stract(yy).txt+"  "+lbl);

    tempp=cell2mat(reshape({data_stract.cphSmean},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    disp("mean normal imageHSV= "+string(data_stract(yy).txt)+"  "+lbl);


    tempp=cell2mat(reshape({data_stract.cphSvar},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    disp("variance normal imageHSV = "+string(data_stract(yy).txt)+"  "+lbl);
    
    tempp=cell2mat(reshape({data_stract.cphcov},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    disp("covariance imageHSV= "+string(data_stract(yy).txt)+"  "+lbl);

    
    disp(' ');
    disp('_______________SSIM on channels HSV and RGB');
    tempp=cell2mat(reshape({data_stract.ssim_hh},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    disp("SSIM = "+string(data_stract(yy).txt)+"  "+lbl);

    tempp=cell2mat(reshape({data_stract.ssim_hs},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    disp("SSIM Sturation histo= "+string(data_stract(yy).txt)+"  "+lbl);

%     tempp=cell2mat(reshape({data_stract.ssim_hv},[1,N]));
%     MinVal=max(tempp);
%     [~,yy]=find(tempp==MinVal);
%     disp("SSIM ssim_hv= "+string(data_stract(yy).txt));
    

    tempp=cell2mat(reshape({data_stract.ssim_h},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    disp("SSIM Hue= "+string(data_stract(yy).txt)+"  "+lbl);
    
    tempp=cell2mat(reshape({data_stract.ssim_s},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    disp("SSIM Saturation= "+string(data_stract(yy).txt)+"  "+lbl);
    
    tempp=cell2mat(reshape({data_stract.ssim_v},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    disp("SSIM Value = "+string(data_stract(yy).txt)+"  "+lbl);
    
    tempp=cell2mat(reshape({data_stract.ssim_rgb},[1,N]));
    MinVal=max(tempp);
    [~,yy]=find(tempp==MinVal);
    if data_stract(yy).txt==txtreal lbl="Yes"; else lbl="NO" ;end
    disp("SSIM = "+string(data_stract(yy).txt)+"  "+lbl);

    
end

