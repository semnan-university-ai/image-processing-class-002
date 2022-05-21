input=imread('Lenna.png');
b=imread('text.jpg');

input=rgb2gray(input);
b=rgb2gray(b);

output = input;
height = size(input, 1); 
width = size(input, 2);
embed_counter = 1;
for i = 1 : height 
    for j = 1 : width
            LSB = mod(double(input(i, j)), 2);
            LSB2=mod(double(b(i, j)), 2);
            temp = double(xor(LSB, LSB2));
            output(i, j) = input(i, j)+temp;
          
    end
end
imwrite(input, 'originalImage.png');
imwrite(output, 'stegoImage.png');