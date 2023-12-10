clear all;
clc;
close all;

pkg load image

%READ and Display image
B=imread('image1.jpg');
subplot(2,2,1);
imshow(B);
title('ORIGINAL IMAGE');

%Image Resize
x=imresize(B,3);
subplot(2,2,2);
imshow(x);
fontsize=25
title('RESIZED IMAGE');

%Grayscale image
C=rgb2gray(B);
subplot(2,2,3);
imshow(C);
title('GRAYSCALE IMAGE');

%Black and White image
BW=im2bw(B);
subplot(2,2,4);
imshow(BW);
title('BLACK AND WHITE IMAGE');





