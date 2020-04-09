function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.

C = 0; % C is the set of examples that are assigned to centroid k.
X_sum = zeros(1,n); % holds sum of the data point that are closest to centroid
for i = 1:K
    for j = 1:m 
        if (idx(j) == i)
        X_sum = X_sum + X(j, :);
        C =C +1;
        end
    end
    centroids(i,:) = (1 / C) * (X_sum);    
    X_sum = zeros(1,n);
    C = 0;
end

%--------------- OR ---------------
 % for i = 1:K
     % X_i = X(idx == i, :);
     % centroids(i,:) = mean(X_i, 1);
 % end

 %--------------- OR ---------------
 
% for i=1:K;
	% centroids(i, :) = (1 / length(find(idx == i))) * sum(X(find(idx == i), :));
% end

% =============================================================
end
