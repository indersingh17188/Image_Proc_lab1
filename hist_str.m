function [O] = hist_str(I)
%This function gives you streching for your current histogram, that is 
%it changes the greyscale levels such that they cover a wide range of
%values
I = double(I);
[r,c]=size(I);
a=min(min(I))
b=max(max(I))
O=zeros(r,c);
for i=1:r
    for j=1:c
        if I(i,j) < a
            O(i,j) = 0;
        elseif I(i,j) > b
            O(i,j) = 255;
        else 
            O(i,j) = 255*(I(i,j)-a)/(b-a);
        end
    end
end
O=uint8(O);

