% Load the images
pkg load image;
img1 = imread('imgG.jpg');
img2 = imread('imgB.png');

img1=imresize(img1,[600 600]);
img2=imresize(img2,[600 600]);
% Ensure the images are of the same size


% a. Addition of two images
img_add = img1 + img2;

% b. Subtract one image from another
img_sub = img1 - img2;

% c. Calculate mean value of images
img_mean = (img1 + img2) / 2;

% Display the results
figure, imshow(img_add), title('Addition of two images');
figure, imshow(img_sub), title('Subtraction of one image from another');
figure, imshow(img_mean), title('Mean value of images');
