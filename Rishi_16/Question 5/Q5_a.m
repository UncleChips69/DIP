%a. Standard MATLAB function

pkg load image;
% Load an image
img = imread('img2.jpg');
% Convert the image to grayscale if it is not
if size(img,3)==3
 img = rgb2gray(img);
end
% Calculate the histogram using imhist function
hist_img = imhist(img);
% Perform histogram equalization using histeq function
eq_img = histeq(img);
figure
imhist(img);
title("ORIGINAL HISTOGRAM");
figure
imhist(eq_img);
title("EQUILIZED HISTOGRAM");
figure
imshow(img);
title('ORIGINAL IMAGE');
figure
imshow(eq_img);
title('EQUILIZED IMAGE');







