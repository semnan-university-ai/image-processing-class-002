function img1 = truecolor(img)

    img = imread(img);
    img1 = img;
    imgsiz = size(img1);

    x = imgsiz(1,1);
    y = imgsiz(1,2);

    %0-51
    for i = 1:x
        for j = 1:y
            for k = 1:3
                if img1(i,j,k) < 51 && img1(i,j,k) > -1
                    if img1(i,j,k) >= 26
                        img1(i,j,k) = 51;
                    else
                        img1(i,j,k) = 0;
                    end
                
            %52-102
                elseif img1(i,j,k) < 102
                    if img1(i,j,k) >= 77
                        img1(i,j,k) = 102;
                    else
                        img1(i,j,k) = 52;
                    end
                
            %103-153
                elseif img1(i,j,k) < 153
                    if img1(i,j,k) >= 127
                        img1(i,j,k) = 153;
                    else
                        img1(i,j,k) = 103;
                    end
                
            %153-204
                elseif img1(i,j,k) < 204
                    if img1(i,j,k) >= 178
                        img1(i,j,k) = 204;
                    else
                        img1(i,j,k) = 153;
                    end
                
            %205-255
                elseif img1(i,j,k) <= 255
                    if img1(i,j,k) >= 229
                        img1(i,j,k) = 255;
                    else
                        img1(i,j,k) = 205;
                    end
                end                       
            end
        end
    end
    figure, imshowpair(img, img1, 'montage')
end