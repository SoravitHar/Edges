clc
clear
a = imread('a.jpeg');
imshow(a)
I = rgb2gray(a);
%% Filter
b = edge(I,'canny');
imshow(b)