pkg load image
img = imread ("img4.jpeg");
k = 0.5;
R = 128;
n = 5;
filtered = colfilt(img, [n n], "sliding", @(x) (mean(x).*(1+0.5*(std(x)/128 - 1))));
img(img < filtered) = 0;
img(img >= filtered) = 255;

image (img)
imwrite (img, "img4.jpeg")
