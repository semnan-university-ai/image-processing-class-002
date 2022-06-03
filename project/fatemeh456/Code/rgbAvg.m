function [r, g, b] = rgbAvg(image)

    image_size = size(image);

    img_R = 0;
    img_G = 0;
    img_B = 0;

    k = 1;
    for i = 1 : image_size(1)
        for j = 1 : image_size(2)
            img_R = img_R + double(image(i, j, 1));
            img_G = img_G + double(image(i, j, 2));
            img_B = img_B + double(image(i, j, 3));
            k = k + 1;
        end
    end

    r = img_R / k;
    g = img_G / k;
    b = img_B / k;

end