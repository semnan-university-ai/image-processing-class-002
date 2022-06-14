clc;
close all;
clear;

mean("paint/fish.jpeg");
newmed7("paint/fish.jpeg");
morpho_line('paint/fish.jpeg');
fft_paint('paint/fish.jpeg');

mean("paint/face.jpeg");
newmed7("paint/face.jpeg");
morpho_line('paint/face.jpeg');
fft_paint('paint/face.jpeg');

mean("paint/moon.jpeg");
newmed7("paint/moon.jpeg");
morpho_line('paint/moon.jpeg');
fft_paint('paint/moon.jpeg');

mean("paint/bts.jpeg");
newmed7("paint/bts.jpeg");
morpho_line('paint/bts.jpeg');
fft_paint('paint/bts.jpeg');