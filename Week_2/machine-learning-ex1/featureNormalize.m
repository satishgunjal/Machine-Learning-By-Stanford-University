function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%    

% Without vectorization (Results are same)
% One drawback of this code is it wont work with datasets of all sizes (any number of features / examples)
    %{
    mu(1) = mean(X(:,1)); % compute the mean of the feature 1 (x1)
    mu(2) = mean(X(:,2)); % compute the mean of the feature 2  (x2)

    sigma(1) = std(X(:,1));  % compute the standard deviation of the feature 1 (x1)
    sigma(2) = std(X(:,2));  % compute the standard deviation of the feature 2 (x2)
       
    num_iters = length(X) % number of training examples

    % loop thr' every training example to do feature scaling and mean normalization of every value of feature x1 and x2
    for iter = 1:num_iters
        X_norm(iter,[1]) = (X(iter,[1]) -mu(1))/sigma(1); % 'X(iter,[1])' to get values from first column (feature 1) only
        X_norm(iter,[2]) = (X(iter,[2]) -mu(2))/sigma(2); % 'X(iter,[2])' to get values from first column (feature 2) only
    end
    %}

% Using Vectorization (Results are same)
% This code will work with datasets of all sizes (any number of features / examples)

    mu = mean(X)   % will give us mean of feature x1 and x2
    sigma = std(X) % will give us standard deviation of feature x1 and x2
    
    % loop thr' both columns of X (i.e feature x1 and x2 columns)
    % to do feature scaling and mean normalization of every value of feature x1 and x2
    for iter = 1:size(X, 2) 
        X_norm(:,iter) = (X(:,iter) - mu(iter)) / sigma(iter);
    end
% ============================================================

end
