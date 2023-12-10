pkg load image;
close all;
clc;
clear all;


A = imread('img1.jpg');
B= imread('IMg2.jpg');
C= imread('rgb.png');

A=imresize (A, [600 600]);
B=imresize (B, [600 600]);
C=imresize (C, [600 600]);
% quantize intensity

#a. AND operation between two images

G2 = bitand(A,B);
figure('Name','Add Operation');
subplot(3,3,1);imshow(A);
subplot(3,3,3);imshow(B);
subplot(3,3,4:9);imshow(G2);


#b. OR operation between two images
G3=bitor(A,B);
figure('Name','OR Operation');
subplot(3,3,1);imshow(A);
subplot(3,3,3);imshow(B);
subplot(3,3,4:9);imshow(G3);


#c. Calculate intersection of two images
G4=bitxor(A,C);
figure('Name','XOR Operation');
subplot(3,3,1);imshow(A);
subplot(3,3,3);imshow(C);
subplot(3,3,4:9);imshow(G4);


#d. NOT operation
G5=255-A;
G6=255-B;
G7=255-C;
figure('Name','NOT Operation');
subplot(3,3,1);imshow(A);
subplot(3,3,4);imshow(B);
subplot(3,3,7);imshow(C);
subplot(3,3,3);imshow(G5);
subplot(3,3,6);imshow(G6);
subplot(3,3,9);imshow(G7);
