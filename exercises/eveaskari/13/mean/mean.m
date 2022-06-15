function new = mean(img)
    filter_size = 7;
    pading = (filter_size - 1)/2;
    img = rgb2gray(imread(img));
    res_img = img;
    [x y]=size(img);
    for i=1+pading:x-pading
        for j=1+pading:y-pading
            new = img(i-pading:i+pading, j-pading:j+pading);
            new = sum(new(:));
            res_img(i,j)= ceil(new/49);
        end
    end
    figure, imshowpair(res_img,img, 'montage');
end