function [I_after_nearest] = Nearest_Neighbour_SGD(I)
%===========================Function Description==============================
% Author: Shivani Dhok
% Date of Creation: January 13, 2019
% Digital Image Processing
% Function for: Nearest Neighbour Algorithm

% The function 'Nearest_Neighbour_SGD()' performs histogram equalization of an image.
% 
% Input:
%       I = Image
% Output:
%       I_after_nearest = Image after nearest neighbour algorithm.


% Converting to gray...
[a b c] = size(I);
if c == 3
    I_gray = rgb2gray(I);
end
[row col] = size(I_gray);

% Padding zeros
I_after_padd = [zeros(row,1) I_gray zeros(row,1)];
I_after_padd = [zeros(1,col+2); I_after_padd; zeros(1,col+2)];

% Matrix of all zeros
I_after_nearest = zeros(row,col);

% Compute nearest neighbour and replace in the created matrix of all zeros
for ii = 2:row
    for jj = 2:col
        Bin_Vec = zeros(1,8);
        Bin_Vec(8) = Get_Bin_threshold_SGD(I_after_padd(ii,jj),I_after_padd(ii+1,jj));
        Bin_Vec(7) = Get_Bin_threshold_SGD(I_after_padd(ii,jj),I_after_padd(ii+1,jj-1));
        Bin_Vec(6) = Get_Bin_threshold_SGD(I_after_padd(ii,jj),I_after_padd(ii,jj-1));
        Bin_Vec(5) = Get_Bin_threshold_SGD(I_after_padd(ii,jj),I_after_padd(ii-1,jj-1));
        Bin_Vec(4) = Get_Bin_threshold_SGD(I_after_padd(ii,jj),I_after_padd(ii-1,jj));
        Bin_Vec(3) = Get_Bin_threshold_SGD(I_after_padd(ii,jj),I_after_padd(ii-1,jj+1));
        Bin_Vec(2) = Get_Bin_threshold_SGD(I_after_padd(ii,jj),I_after_padd(ii,jj+1));
        Bin_Vec(1) = Get_Bin_threshold_SGD(I_after_padd(ii,jj),I_after_padd(ii+1,jj+1));
        
        I_after_nearest(ii-1,jj-1) = Bin2Dec_SGD(Bin_Vec);
    end
end

% Convert to uint8
I_after_nearest = uint8(I_after_nearest);
