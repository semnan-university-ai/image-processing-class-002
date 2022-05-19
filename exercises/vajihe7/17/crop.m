function cropimg = crop(image,row_start,col_start,row_end,col_end)

crop = image(row_start:row_end ,col_start:col_end , : );
figure;
subplot(1,2,1); imshow(image) , title('Image')
subplot(1,2,2); imshow(crop) , title('Crop_Image')

end