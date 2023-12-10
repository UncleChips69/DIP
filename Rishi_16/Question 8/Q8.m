% Load the image package
pkg load image;

% Function to apply a low pass filter
function lp_img = apply_low_pass_filter(img, h)
 lp_img = imfilter(img, h);
endfunction

% Function to apply a high pass filter
function hp_img = apply_high_pass_filter(img, h)
 hp_img = imsubtract(img, apply_low_pass_filter(img, h));
endfunction

% Load an image
img = imread('img2.jpg');

% Define a low pass filter
h_lp = fspecial('average', [3 3]);

% Define a high pass filter
h_hp = fspecial('laplacian', 0.5);

% Apply the low pass filter
lp_img = apply_low_pass_filter(img, h_lp);

% Apply the high pass filter
hp_img = apply_high_pass_filter(img, h_hp);

% Display the original, low pass filtered, and high pass filtered images
subplot(1,3,1), imshow(img), title('Original Image');
subplot(1,3,2), imshow(lp_img), title('Low Pass Filtered Image');
subplot(1,3,3), imshow(hp_img), title('High Pass Filtered Image');




