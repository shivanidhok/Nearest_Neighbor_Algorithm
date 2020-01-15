function [Bin_val] = Get_Bin_threshold_SGD(x,y)
%===========================Function Description==============================
% Author: Shivani Dhok
% Date of Creation: January 13, 2019
% Digital Image Processing
% Function for: Simple sign function such that
% Bin_val = 1 ; if x<y
%         = 0 ; if x<=y..............................eq(1)

% The function 'Get_Bin_threshold()' performs simple sign function as shown above.
% 
% Input:
%       x: input 1
%       y: input 2
% Output:
%       Bin_val : 1 or 0 as in eq(1)
% 
    if x>=y
        Bin_val = 0;
    else
        Bin_val = 1;
    end