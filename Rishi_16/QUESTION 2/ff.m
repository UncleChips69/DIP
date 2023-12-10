I = max (phantom (), 0);
 figure; imshow (I);
 title ("Original image");
 h = imhist (I);
 t = otsuthresh (h);
 J = im2bw (I);
 figure; imshow (J);
 title_line = sprintf ("Black and white image after thresholding, t=%g",
                       t*255);
 title (title_line);
