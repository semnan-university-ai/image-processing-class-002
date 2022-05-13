function cropimg = crop(image,row_start,col_start,row_end,col_end)

crop = image(row_start:row_end ,col_start:col_end , : );
figure(1), imshow(image) , title('original Image')
figure(2), imshow(crop) , title('Crop Image')

end
