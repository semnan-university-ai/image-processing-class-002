clc;
clear;
close all;

path    = '../img/test/';
images	= dir(strcat(path, '*.jpg'));
count   = length(images);

[ test_data_number, test_data_names ] = train();

train_size = size(test_data_names);
train_size = train_size(2);

images_result = zeros(count, 5);
images_result_label = strings(count);

temp_distance = zeros(count, train_size, 'double');

figure;
for i = 1 : count
    image_file          = images(i).name;
    image               = imread(strcat(path, image_file));
    
    [r, g, b] = rgbAvg(image);
    
    images_result(i, 1) = r;
    images_result(i, 2) = g;
    images_result(i, 3) = b;
    min_distance = 1;
    
    for j = 1 : train_size
        
        add_value = min(test_data_number(j,1), min(test_data_number(j,2), test_data_number(j,3) ) );
        add_one = double(r) + (255 - add_value);
        add_two = double(g) + (255 - add_value);
        add_three = double(b) + (255 - add_value);
        
        if(add_one > 255)
            add_one = 255;
        end
        
        if(add_two > 255)
            add_two = 255;
        end
        
        if(add_three > 255)
            add_three = 255;
        end
        
        temp_distance(i, j) = Distance(add_one, add_two, add_three, test_data_number(j,1), test_data_number(j,2), test_data_number(j,3));
        if( temp_distance(i, j) < temp_distance(i, min_distance) )
            min_distance = j;
        end
    end
    images_result(i, 4) = min_distance;
    images_result(i, 5) = temp_distance(i, min_distance);
    images_result_label(1, :) = 'file name';
    images_result_label(2, i) = images(i).name;
    images_result_label(4, :) = 'result';
    images_result_label(5, i) = test_data_names(min_distance);
    
    if(images_result(i, 5) > 99 || (double(r) < 10 && double(g) < 10 && double(b) < 10) || (double(r) > 250 && double(g) > 250 && double(b) > 250) )
        images_result_label(5, i) = 'no money';
        images_result(i, 4) = 0;
    end
    
    subplot(round(count / 4), round(count / 4),i),imshow(image);
    title(images_result_label(5, i));
end

Done = 1