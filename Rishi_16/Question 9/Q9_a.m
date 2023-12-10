% Load the image package
pkg load image;

% Function to apply FFT
function fft_img = apply_fft(img)
 fft_img = fftshift(fft2(img));
endfunction

% Function to apply IFFT
function ifft_img = apply_ifft(fft_img)
 ifft_img = ifft2(ifftshift(fft_img));
endfunction

% Function to apply a low pass filter in frequency domain
function lp_fft_img = apply_low_pass_filter(fft_img, D0)
 [M, N] = size(fft_img);
 [X, Y] = meshgrid(-N/2:N/2-1, -M/2:M/2-1);
 D = sqrt(X.^2 + Y.^2);
 H = double(D <= D0);
 lp_fft_img = fft_img .* H;
endfunction

% Function to apply a high pass filter in frequency domain
function hp_fft_img = apply_high_pass_filter(fft_img, D0)
 [M, N] = size(fft_img);
 [X, Y] = meshgrid(-N/2:N/2-1, -M/2:M/2-1);
 D = sqrt(X.^2 + Y.^2);
 H = double(D > D0);
 hp_fft_img = fft_img .* H;
endfunction

% Load an image
img = imread('img1.jpg');
% Convert the image to grayscale if it is RGB
if size(img,3) == 3
 img = rgb2gray(img);
end

% Apply FFT
fft_img = apply_fft(img);

% Apply low pass filter in frequency domain
lp_fft_img = apply_low_pass_filter(fft_img, 30);
% Apply high pass filter in frequency domain
hp_fft_img = apply_high_pass_filter(fft_img, 30);
% Apply IFFT to reconstruct images
lp_img = abs(apply_ifft(lp_fft_img));
hp_img = abs(apply_ifft(hp_fft_img));
% Display the original, low pass filtered, and high pass filtered images
subplot(2,4,1), imshow(img), title('Original Image');
subplot(2,4,2), imshow(fft_img), title('fft image');
subplot(2,4,3), imshow(lp_fft_img), title('low pass filter in frequency domain');
subplot(2,4,4), imshow(hp_fft_img), title('high pass filter in frequency domain');
subplot(2,4,5), imshow(lp_img, []), title('IFFT Low Pass Filtered RESTORED Image');
subplot(2,4,6), imshow(hp_img, []), title('IIFT High Pass Filtered RESTORED Image');




