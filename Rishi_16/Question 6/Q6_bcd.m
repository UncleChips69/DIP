% Load the image processing package
pkg load image;

% Read an image
img = imread('img1.jpg');
figure;
imshow(img);
title("Original Image");
% b. Scaling
scaled_img = imresize(img, 2); % Double the size of the image
figure;
imshow(scaled_img);
title("Scaled Image");
% c. Rotation
rotated_img = imrotate(img, 45); % Rotate the image 45 degrees counterclockwise
figure;
imshow(rotated_img);
title("Rotated Image");
% d. Shrinking
shrunk_img = imresize(img, 0.5); % Halve the size of the image
figure;
imshow(shrunk_img);
title("Shrunk Image");
% e. Zooming
zoomed_img = imcrop(img, [75 75 150 150]); % Crop a 150x150 pixel square from the image starting at (75,75)
figure;
imshow(zoomed_img);
title("Zoomed Image");s
