clc;
close all;
clear;

A=rgb2gray(imread('monarch.png'));

padd = padarray(A,[0 20],'replicate','both');

imshow(padd);



