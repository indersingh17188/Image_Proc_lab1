im_spine=imread('spine.tif');
im_spined=double(im_spine);
[m,n]=size(im_spined);
gamma=0.4;

%Let's apply the power law transform
out_spine=abs((1*im_spined).^gamma);

%Now we have to normalise this output on an intensity scale of 0 to 255
maxm=max(out_spine(:));
minm=min(out_spine(:));
for i=1:m
for j=1:n
out_spine(i,j)=(255*out_spine(i,j))/(maxm-minm);
end
end
out_spine=uint8(out_spine);

%Now we have to show the original and output image
figure(1);
set(gcf,'Position',get(0,'Screensize'));
subplot(121),imshow(im_spine),title('original Image');
subplot(122),imshow(out_spine),title('Output of Power Law Transform');
figure(2);
subplot(121),imhist(im_spine),title('Histogram original');
subplot(122),imhist(out_spine),title('Histogram output image');

