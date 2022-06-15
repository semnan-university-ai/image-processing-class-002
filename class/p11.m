clc;
close all;
clear;

image = imread("histogram.jpg");
figure, hist(image);