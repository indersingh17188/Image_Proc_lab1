clc;
close all;
clear all;

A=imread('IA.bmp');
hA=imhist(A); % hA will be a vector which will contain total number of pixels at 256 instensities
hA(101) % this will display the no of pixels having 100 intensity (101-1)
sum(hA(101:151)) % To display the sum of pixels having intensity between 100 to 150 for the image

%Similarly for all other images
B=imread('IB.bmp');
hB=imhist(B);
sum(hB(101:151))

C=imread('IC.bmp');
hC=imhist(C);
sum(hC(101:151))

D=imread('ID.bmp');
hD=imhist(D);
sum(hD(101:151))
figure, imshow(D, []);

min(min(A)) % This will give us smallest grey value contained in the image 
min(min(B))
min(min(C))
min(min(D))

figure,imhist(D); % This will show that all of the pixels lie between 0 to 28 intentisity level, i.e. this image is extremely dark
min(min(D))
max(max(D))

% Excercise 2.2 Computing Histograms 

image1 = imread('IA.bmp');
hist1 = my_histogram(image1);
figure, imhist(image1);




