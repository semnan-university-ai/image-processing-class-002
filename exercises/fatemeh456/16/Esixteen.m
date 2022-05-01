for i = 1 : x
    for j = 1 : y
        for k = 1 : 3
            
            if img(i, j, k) < 51 && img(i, j, k) > -1
                if img(i, j, k) < 51/2
                    img(i, j, k) = 0;
                else
                    img(i, j, k) = 51;
                end

            elseif img(i, j, k) < 102 && img(i, j, k) >= 51
                if img(i, j, k) < (102-51)/2
                    img(i, j, k) = 51 ;
                else
                    img(i, j, k) = 102 ;
                end

            elseif img(i, j, k) < 153 && img(i, j, k) >= 102
                if img(i, j, k) < (153-102)/2
                    img(i, j, k) = 102 ;
                else
                    img(i, j, k) = 153 ;
                end
                
            elseif img(i, j, k) < 204 && img(i, j, k) >= 153 
                if img(i, j, k) < (204-153)/2
                    img(i, j, k) = 153 ;
                else
                    img(i, j, k) = 204 ;
                end

            elseif img(i, j, k) < 255 && img(i, j, k) >= 204
                if img(i, j, k) < (255-204)/2
                    img(i, j, k) = 204 ;
                else
                    img(i, j, k) = 255 ;
                end

            else
                img(i, j, k) = 255 ;
            end
        end
    end
end
