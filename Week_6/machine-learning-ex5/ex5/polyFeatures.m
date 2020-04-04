function [X_poly] = polyFeatures(X, p)
%POLYFEATURES Maps X (1D vector) into the p-th power
%   [X_poly] = POLYFEATURES(X, p) takes a data matrix X (size m x 1) and
%   maps each example into its polynomial features where
%   X_poly(i, :) = [X(i) X(i).^2 X(i).^3 ...  X(i).^p];
%


% You need to return the following variables correctly.
X_poly = zeros(numel(X), p);

% ====================== YOUR CODE HERE ======================
% Instructions: Given a vector X, return a matrix X_poly where the p-th 
%               column of X contains the values of X to the p-th power.
%
%      
    for i = 1:p     
      X_poly(:, i) = [X(:,1).^i];          
    end 
% Note:
% we are storing values in X_poly by column wise    
% if p= 5 then hardcoded code will look like this,
% X_poly(:, 1) = [X(:,1)];
% X_poly(:, 2) = [X(:,1).^2];
% X_poly(:, 3) = [X(:,1).^3];
% X_poly(:, 4) = [X(:, 1).^4];
% X_poly(:, 5) = [X(:, 1).^5];  
% one more option is as below...
%X_poly(:, i) = X' .^i;
% =========================================================================

end
