function O = power_law (I,gamma)
%%This function will receive an imput image I and a value of gamma in order
%%to perform power law transformation on the original image
ID=double(I);
[m,n]=size(I);

%Let's apply the power law transform with constant c=1
O=abs((1*ID).^gamma);

%Now we have to normalise this output on an intensity scale of 0 to 255
maxm=max(O(:));
minm=min(O(:));
for i=1:m
for j=1:n
O(i,j)=(255*O(i,j))/(maxm-minm);
end
end
O=uint8(O);
