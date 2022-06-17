function [out] = hisPramHSV(img,alpha)
   out = struct;
    if((ndims(img)==3) || (size(img,3)==3))

        hsv_img = rgb2hsv(double(img));
        
        H_channel = hsv_img(:,:,1);
        S_channel = hsv_img(:,:,2);
        V_channel = hsv_img(:,:,3);
        
        [his_H,~] = imhist(H_channel,256);
        [his_S,~] = imhist(S_channel,256);
        [his_V,~] = imhist(V_channel,256);
        out.re_his_H = reshape(his_H,[],alpha);
        out.re_his_S = reshape(his_S,[],alpha);
        out.re_his_V = reshape(his_V,[],alpha);
        out.maen_hist_H_col = mean(out.re_his_H);
        out.maen_hist_S_col = mean(out.re_his_S);
        out.maen_hist_V_col = mean(out.re_his_V);
        out.maen_hist_H_all = mean2(out.re_his_H);
        out.maen_hist_S_all = mean2(out.re_his_S);
        out.maen_hist_V_all = mean2(out.re_his_V);
        out.var_hist_H_col = var(out.re_his_H);
        out.var_hist_S_col = var(out.re_his_S);
        out.var_hist_V_col = var(out.re_his_V);
        out.var_hist_H_all = var(out.re_his_H(:));
        out.var_hist_S_all = var(out.re_his_S(:));
        out.var_hist_V_all = var(out.re_his_V(:));

    else
        disp("image must be RGB color");
    end

end

