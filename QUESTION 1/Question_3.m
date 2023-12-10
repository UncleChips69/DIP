clear all;
clc;
close all;

pkg load image;

im=imread('RGB.jpeg');
im_red = im;
im_green = im;
im_blue = im;

%original image
subplot(2,2,1);
imshow(im);
title("original image");

% Red channel only
im_red(:,:,2) = 0;
im_red(:,:,3) = 0;
subplot(2,2,2);
imshow(im_red);
title("only red");

% Green channel only
im_green(:,:,1) = 0;
im_green(:,:,3) = 0;
subplot(2,2,3);
imshow(im_green);
title("only green");

% Blue channel only
im_blue(:,:,1) = 0;
im_blue(:,:,2) = 0;
subplot(2,2,4);
imshow(im_blue);
title("only blue");

