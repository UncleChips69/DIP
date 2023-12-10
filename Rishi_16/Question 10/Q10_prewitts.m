pkg load image;

% Read an image
I = imread('img1.jpg');

% Convert the image to grayscale if it is RGB
if size(I,3) == 3
 I = rgb2gray(I);
end

% Define the Prewitt masks
Gx = [-3 0 3; -1 0 1; -3 0 3];
Gy = [3 1 3; 0 0 0; -3 -3 -3];

% Apply the Prewitt masks
edges_x = conv2(double(I), Gx, 'same');
edges_y = conv2(double(I), Gy, 'same');
% Calculate the gradient magnitude
edges = sqrt(edges_x.^2 + edges_y.^2);
% Normalize and convert to uint8
edges = uint8(255 * mat2gray(edges));
% Display the edges
imshow(edges);


