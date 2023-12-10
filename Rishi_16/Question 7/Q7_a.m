pkg load image;
% Load an image
img = imread('coins.png');

% Add salt & pepper noise
salt_pepper_noisy_img = imnoise(img, 'salt & pepper', 0.02);

% Add Gaussian noise
Gaussian_noisy_img = imnoise(img, 'gaussian',0,0.02);

% Apply a median filter to reduce noise
salt_pepper_restored_img = medfilt2(salt_pepper_noisy_img);

% Apply a median filter to reduce noise
Gaussian_noisy_restored_img = medfilt2(Gaussian_noisy_img);

% Display the original, noisy, and restored images
subplot(2,3,1), imshow(img), title('Original Image');
%%%%%%%
subplot(2,3,2), imshow(salt_pepper_noisy_img), title('salt pepper noisy img');
subplot(2,3,3), imshow(salt_pepper_restored_img), title('salt pepper restored img');
%%%%%%%
subplot(2,3,4), imshow(Gaussian_noisy_img), title('Gaussian noisy img');
subplot(2,3,5), imshow(Gaussian_noisy_restored_img), title('Gaussian noisy restored img');






