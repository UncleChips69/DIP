#d. Contrast stretching
cs = imadjust(img, stretchlim(img,[0.1 0.9]),[]);
subplot(3,3,7); imshow (cs);
title("TOL-> 0.1 , 0.9")
cs2 = imadjust(img, stretchlim(img,[0.3 0.7]),[]);
subplot(3,3,8); imshow (cs2);
title("TOL-> 0.3 , 0.7")
cs3 = imadjust(img, stretchlim(img,[0.6 0.5]),[]);
subplot(3,3,9); imshow (cs3);
title("TOL-> 0.6 , 0.5")
