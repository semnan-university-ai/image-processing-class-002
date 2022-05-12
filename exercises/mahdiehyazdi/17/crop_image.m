function crop_img = crop_image(img,startRow,startCol,endRow,endCol)
  
crop = img(startRow:endRow ,startCol:endCol , : );
figure(1), imshow(img) , title('original Image');
figure(2), imshow(crop) , title('Crop Image');

end