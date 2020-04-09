function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

m = size(X,1); % total number of training examples
projection_errors = zeros(K,1); % stored projection error for every data point against initial centroid

for i = 1: m
    x = X(i, :); % get the feature value at index i
    for j = 1: K
        %projection_errors(j) = (x - centroids(j, :)) * (x - centroids(j, :))';
        % OR
        projection_errors(j) = sum((x - centroids(j,:)).^2);
    end
    [min_value, idx(i)] = min(projection_errors);
end
% =============================================================

% Notes
% Will loop through each data point(feature) and find the squar projection error against the initial cluster centroids
% Since K = 3, We will get three square projection errors for each data point(feature)
% Minimum square projection error index will be the index of the centroid that is closest to given data point(feature)
% Ref. Video - 'K-Means Algorithm' at 5min

end
