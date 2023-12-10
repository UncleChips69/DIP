pkg load image;

%a) Translation

I = imread("Batsman.jpeg");
figure;
imshow(im2bw(I));
title("Original Image");
J = imtranslate(im2bw(I),15,25);
figure;
imshow(im2bw(J));
title("Translated Image");

