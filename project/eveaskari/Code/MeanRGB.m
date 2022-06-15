function [Rm ,Gm ,Bm] = MeanRGB(img)

imgs = size(img);
Rs = 0;
Gs = 0;
Bs = 0;

n = 1;

for i = 1: imgs(1)
    for j = 1: imgs(2)
        Rs =Rs + double(img(i,j,1));
        Gs =Gs + double(img(i,j,2));
        Bs =Bs + double(img(i,j,3));
        n = n+1;
    end
end

Rm = round(Rs/n);
Gm = round(Gs/n);
Bm = round(Bs/n);
end
