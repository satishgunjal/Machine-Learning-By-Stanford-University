function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the J correctly 

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
% For more details about cost function implementation ref notes for date 21/02/2020
predictions = X * theta;
sqrErrors = (predictions -y).^2;

J = 1/(2*m) * sum(sqrErrors);

% =========================================================================

end
