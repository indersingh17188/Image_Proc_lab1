function[h]=my_histogram(I) 
% Function to cumpute the histogram of an image I
    [r,c]=size(I);
h=zeros(1,256);
for i=1:r
 for j=1:c
    z=I(i,j);
   h(z+1)=h(z+1)+1;
end
end
plot(h)
title('Histogram')