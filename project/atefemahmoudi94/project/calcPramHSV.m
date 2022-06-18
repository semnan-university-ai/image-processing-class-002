function [out] = calcPramHSV(img,alpha,dim)
%CALCPRAMMEAN Summary of this function goes here
%   Detailed explanation goes here

    out = struct;
    if((ndims(img)==3) || (size(img,3)==3))
        img=imresize(img,[dim,dim],'bilinear');
        out.hsv_img = rgb2hsv(double(img));
        [H_channel,S_channel,V_channel] = imsplit(out.hsv_img);
        
        out.re_H = reshape(H_channel,[],alpha);
        out.re_S = reshape(S_channel,[],alpha);
        out.re_V = reshape(V_channel,[],alpha);
        out.maen_H_col = mean(out.re_H);
        out.maen_S_col = mean(out.re_S);
        out.maen_V_col = mean(out.re_V);
        out.maen_H_all = mean2(out.re_H);
        out.maen_S_all = mean2(out.re_S);
        out.maen_V_all = mean2(out.re_V);
        out.var_H_col = var(out.re_H);
        out.var_S_col = var(out.re_S);
        out.var_V_col = var(out.re_V);
        out.var_H_all = var(out.re_H(:));
        out.var_S_all = var(out.re_S(:));
        out.var_V_all = var(out.re_V(:));


    else
        disp("image must be RGB color");
    end

end

