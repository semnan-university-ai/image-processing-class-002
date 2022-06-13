function [test_matrix, RGB, maxRGB, minRGB] = Train1000()

root = '../train/2000/';
path = '*.jpg';
money = dir([root path]);
lenm = max(size(money));

test_matrix = zeros(lenm , 3);

for i = 1: lenm
    
    img = imread([root money(i).name]);
    
    [Rm ,Gm ,Bm] = MeanRGB(img);
    
    test_matrix(i,1) = Rm;
    test_matrix(i,2) = Gm;
    test_matrix(i,3) = Bm;
    
    RGB = round(mean(test_matrix, 1));
    
    maxRGB = max(test_matrix);
    minRGB = min(test_matrix);
        
end 

end
