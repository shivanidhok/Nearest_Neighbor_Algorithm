# Nearest_Neighbor_Algorithm
The MATLAB function updates the value of the pixel of an image, depending on the value of pixels that are its nearest neighbors.

Main Function: Nearest_Neighbour_SGD()

===========================Function Description==============================

Author: Shivani Dhok
Date of Creation: January 13, 2019
Digital Image Processing
Function for: Histogram equalization

The function 'Nearest_Neighbour_SGD()' performs histogram equalization of an image.

Input:
      I = Image
Output:
      I_after_nearest = Image after nearest neighbour algorithm.
      
-----------------------------------------------------------------------------     
    
Supporting Function: Get_Bin_threshold()

===========================Function Description==============================

Author: Shivani Dhok
Date of Creation: January 13, 2019
Digital Image Processing
Function for: Simple sign function such that
Bin_val = 1 ; if x<y
        = 0 ; if x<=y..............................eq(1)

The function 'Get_Bin_threshold()' performs simple sign function as shown above.
 
Input:
      x: input 1
      y: input 2
Output:
      Bin_val : 1 or 0 as in eq(1)

-----------------------------------------------------------------------------

Supporting Function: Bin3Dec_SGD()

===========================Function Description==============================

Author: Shivani Dhok
Date of Creation: January 10, 2019
Digital Image Processing
Function for: Convert a binary number to decimal
 
The function Bin2Dec_SGD() converts a binary number to decimal pattern.
 
Input: 
    BitStream: Input Binary Stream for the conversion to decimal. 
Output:
    n: Equivalent decimal number
