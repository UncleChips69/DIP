pkg load image;
% Load an image
img = imread('img2.jpg');
% Convert the image to grayscale if it is not
if size(img,3)==3
 img = rgb2gray(img);
end
% Calculate the histogram
hist_img = zeros(256,1);
[r, c] = size(img);
for i=1:r
 for j=1:c
 hist_img(img(i,j)+1) = hist_img(img(i,j)+1) + 1;
 end
end
% Perform histogram equalization
cdf = cumsum(hist_img) / numel(img);
eq_img = zeros(size(img));
for i=1:r
 for j=1:c
 eq_img(i,j) = round(cdf(img(i,j)+1) * 255);
 end
end
eq_img = uint8(eq_img);
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

