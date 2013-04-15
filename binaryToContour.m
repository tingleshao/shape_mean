function [ contour_im ] = binaryToContour( binary_image_file_name )
% convert binary image to contour image
binary_im = imread('binary_image_file_name');
contour_im = zeros(size(binary_im));
row = size(binary_im,1);
col = size(binary_im,2);
for i = 2:row-1,
    for j = 2:col-1,
        if binary_im(i-1,j) == binary_im(i+1,j) == binary_im(i,j-1) == binary_im(i,j+1)
            continue
        else
            contour_im(i,j) = 1
        end
    end
end

