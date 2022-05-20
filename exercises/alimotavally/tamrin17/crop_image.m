function crop_image = crop_image(image,row_start,col_start,row_end,col_end)

crop_img = image(row_start:row_end ,col_start:col_end , : );
figure(1), imshow(image) ,
figure(2), imshow(crop_img) ,

end