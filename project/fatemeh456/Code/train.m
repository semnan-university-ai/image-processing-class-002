function [ test_data_number, test_data_names ] = train()
    

    path    = '../img/train/';
    images	= dir(strcat(path, '*.jpg'));
    count   = length(images);
    
    test_data_number = zeros(count, 3);
    test_data_name = '';

    for i = 1 : count
        image_file      = images(i).name;
        image           = imread(strcat(path, image_file));
        [r, g, b] = rgbAvg(image);
        test_data_number(i, 1) = r;
        test_data_number(i, 2) = g;
        test_data_number(i, 3) = b;
        
        test_data_name = strcat(test_data_name, ' ');
        test_data_name = strcat(test_data_name, images(i).name);
        test_data_name = strrep(test_data_name, '.JPG', ' , ');
    end
    
    test_data_name = split(test_data_name);
    
    
    for i = 1 : count 
        test_data_names(i) = strrep(test_data_name(i, 1), ',', '');
    end

end