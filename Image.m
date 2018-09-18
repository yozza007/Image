clear; clc;
jpg = imread('dog.jpg');
jpg2 = rgb2gray(jpg);
bmp = imread('dog.bmp');
bmp2 = rgb2gray(bmp);
gif = imread('dog.gif');
png = imread('dog.png');
tiff = imread('dog.tiff');
tiff2 = rgb2gray(tiff);

his_jpg = imhist(jpg2);
his_bmp = imhist(bmp2);
his_gif = imhist(gif);
his_png = imhist(png);
his_tiff = imhist(tiff2);

cum_jpg = cumsum(his_jpg);
cum_bmp = cumsum(his_bmp);
cum_gif = cumsum(his_gif);
cum_png = cumsum(his_png);
cum_tiff = cumsum(his_tiff);

eq_jpg = histeq(jpg2);
eq_bmp = histeq(bmp2);
eq_gif = histeq(gif);
eq_png = histeq(png);
eq_tiff = histeq(tiff2);

cum2_jpg = cumsum(eq_jpg);
cum2_bmp = cumsum(eq_bmp);
cum2_gif = cumsum(eq_gif);
cum2_png = cumsum(eq_png);
cum2_tiff = cumsum(eq_tiff);

subplot(5,2,1); 
imshow(cum_jpg);
subplot(5,2,2); 
imshow(cum2_jpg);
subplot(5,2,3); 
imshow(cum_bmp);
subplot(5,2,4); 
imshow(cum2_bmp);
subplot(5,2,5); 
imshow(cum_gif);
subplot(5,2,6); 
imshow(cum2_gif);
subplot(5,2,7);
imshow(cum_png);
subplot(5,2,8);
imshow(cum2_png);
subplot(5,2,9);
imshow(cum_tiff);
subplot(5,2,10);
imshow(cum2_tiff);