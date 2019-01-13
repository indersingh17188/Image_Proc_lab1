function O = hist_eql (I)
ID=double(I);
[N,M]=size(I);
O=zeros(N,M);
%Let's compute the histogram of our image and store it as an array h(k)
h=imhist(I);
%Let's normalise the histogram by dividing the vector h by total no of
%pixels hn(k)
for i=1:256
    h(i)=h(i)/(N*M);
end
%Let's compute the cumulative distribution c(k)
for i=2:256
    h(i)=h(i)+h(i-1);
end
%Let's compute output histogram as a*c(k) where a being maximum input pixel
%value (255 in our case)
for i=1:256
    h(i)=256*h(i);
end

for i=1:N
    for j=1:M
      O(i,j) = round(h(I(i,j)+1));  
    end
end
O=uint8(O);