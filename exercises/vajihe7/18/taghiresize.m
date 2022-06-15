function [in1, in2] = taghiresize(in1,in2)

in1 = imread(in1);
in2 = imread(in2);
[x, y] = size(in1);

in1 = imresize(in1, [x, y]);
in2 = imresize(in2, [x ,y]);
end
