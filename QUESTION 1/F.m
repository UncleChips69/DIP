clear all;
clc;
close all;
pkg load image;
imSize = 200;
RGB = reshape(ones(imSize,1)*reshape(jet(imSize),1,imSize*3),[imSize,imSize,3]);
imshow(RGB)
title('Original RGB Image');

