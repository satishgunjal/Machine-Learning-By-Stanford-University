function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

  predictions = X * theta; %(12x2)*(2x1) >> 12 x 1
  sqrErrors = (predictions -y).^2; % (12 x 1)
  
  % reg = lambda/(2 * m) * sum of theta from 1
  % sum of theta from 1 = theta(2:end, :)' * theta(2:end, :) >> here  (1, 1) x (1,1) = 1x1 a scalar value
  % hence reg = lambda/(2 * m) * theta(2:end, :)' * theta(2:end, :)
  
  reg = lambda/(2 * m) * (theta(2:end, :)' * theta(2:end, :));
  
  % cost
  J = 1/(2*m) * sum(sqrErrors) + reg;   % scalar
  
  % gradient
  % here X'> (2x12) and predictions > (12x1)   
  %-------------2x1----------------------   ------------------2x1------------
  % added 0 to make the 1x1 matrix to 2x1 so that we can add both the terms
  grad = (1 / m) * X' * (predictions - y) + [0; lambda/m * theta(2:end, :)];  % 2 x 1
  
% =========================================================================

grad = grad(:);

end
