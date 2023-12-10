%b. Obtain Flip image

I2 = flip(img ,2);           %# horizontal flip
I3 = flip(img,1);           %# vertical flip
I4 = flip(I3,2);    %# horizontal+vertical flip

subplot(3,3,4), imshow(I2);
title("horizontal flip");
subplot(3,3,5), imshow(I3);
title("vertical flip")
subplot(3,3,6), imshow(I4);
title("horizontal + vertical flip")


