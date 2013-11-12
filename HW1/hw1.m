fprintf('**Begin Program Questions**\n');
fprintf('\t Question 3:\n\n');
fprintf('Hello World.\n');

pause();

fprintf('\n');
fprintf('\t Question 4:\n\n');

A = rand(20);
B = rand(20);
C = rand(20);

D1 = (A*B)*C;
D2 = A*(B*C);

fprintf('norm of (A*B)*C - A*(B*C)\n')

norm(D1-D2)

fprintf('its size');

size(D1-D2)

error = 0 - norm(D1-D2)

fprintf('\n');
pause();

fprintf('\t Question 5:\n\n');

x1 = imread('/1.jpg');

figure();

imshow(x1);

whos
pause();

fprintf('reshaping matrix to 1 by ?\n');

x0 = reshape(x1,1,[]);

fprintf('max and min for image\n');

max(x0),min(x0)

imwrite(x1,'out.jpg');

fprintf('converting image to grayscale...\n');
x2 = rgb2gray(x1);

size(x2)

imshow(x2);

imwrite(x2,'out_gray.jpg');

pause();

fprintf('\t Question 6:\n\n');

xr = x1(:,:,1);  %creating matrix of only red layer
xg = x1(:,:,2);  %creating matrix of only green layer
xb = x1(:,:,3);  %creating matrix of only blue layer

fprintf('displaying only red layer in gray scale...\n');

imshow(xr);
imwrite(xr,'out_red.jpg');
pause();

fprintf('displaying only green layer in gray scale...\n');
imshow(xg);
imwrite(xg,'out_green.jpg');
pause();

fprintf('display only blue layer in gray scale...\n');
imshow(xb);
imwrite(xb,'out_blue.jpg');

pause();

fprintf('display image with color swap...\n');
x3 = x1(:,:,2);
x3(:,:,2) = x1(:,:,3);
x3(:,:,3) = x1(:,:,1);

imshow(x3);
pause();

fprintf('\t Question 7:\n\n');

x4 = double(x2)/255;

colormap(jet);
imagesc(x4);

pause();

fprintf('convert back to black and white\n');

colormap(gray);

pause();

fprintf('\t Question 8:\n\n');

xrd = double(xr);
xgd = double(xg);
xbd = double(xb);

xrd1 = reshape(xrd,1,[]);
xgd1 = reshape(xgd,1,[]);
xbd1 = reshape(xbd,1,[]);

fprintf('histogram of red\n');
hist(xrd1,20);
imwrite(hist(xrd1,20),'hist_red.jpg');
pause();

fprintf('histogram of green\n');
hist(xgd1,20);
imwrite(hist(xgd1,20),'hist_green.jpg');
pause()

fprintf('histogram of blue\n');
hist(xbd1,20);
imwrite(hist(xbd1,20), 'hist_blue.jpg')

pause()

fprintf('\t Question 9:\n\n');

fprintf('matrix size\n');

[h,w] = size(x4)
x5 = x4;

j = 1;
while(j<h)
    i = 1;
    while(i<w)
        x5(j,i) = 1;
        i = i+5;
    end
    j = j + 5;
end


imagesc(x5);
imwrite(x5,'5white.jpg');

pause();

x5(1:5:h,1:5:w) = 0;

imagesc(x5)
imwrite(x5,'5black.jpg');

pause();

x4(find(x4 > 0.7)) =0;

imagesc(x4);

imwrite(x4,'x4.jpg');