
function [ y_R,y_G,y_B ] = Prepare( x )
%prepare a banknote
%   
[y_R,y_G,y_B]=Masking(x);

y_R=Averaging(y_R);
y_G=Averaging(y_G);
y_B=Averaging(y_B);

y_R=ScalingOfBrightness(y_R);
y_G=ScalingOfBrightness(y_G);
y_B=ScalingOfBrightness(y_B);

end

