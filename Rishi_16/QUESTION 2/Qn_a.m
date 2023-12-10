close all;
clc;
clear all;

a=imread('img4.jpeg');
img=imread('img1.jpeg');
pkg load image;

figure();


#a. Obtain Negative image
L=2^8
subplot(3,3,1)
imshow(img);
title("Original image");
neg = (L - 1) - img;
subplot(3,3,2);

imshow(neg,[20 20]);
title("Negative Image")

