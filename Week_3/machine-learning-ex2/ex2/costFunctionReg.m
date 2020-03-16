function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

%DIMENSIONS: 
%   m= number of training examples (here 100)
%   n = number of features (28). Remember in 'mapFeature.m' we have expanded the no of features from 2 to 28.
%   theta = (n+1) x 1  > here 28 x 1
%   X     = m x (n+1)  > here 100 x 28
%   y     = m x 1      > here 100 x 1
%   grad  = (n+1) x 1  > here 28 x 1
%   J     = Scalar 

% h = g(X * theta)
  z = X * theta;  % m x 1
  h = sigmoid(z); % computes the sigmoid of z. % m x 1 here 100 X 1
  
  % reg = lambda/(2 * m) * sum of theta from 1
  % sum of theta from 1 = theta(2:end, :)' * theta(2:end, :) >> here  (1, 27) x (27,1) = 1x1 a scalar value
  % hence reg = lambda/(2 * m) * theta(2:end, :)' * theta(2:end, :)
  
  reg = lambda/(2 * m) * (theta(2:end, :)' * theta(2:end, :));
  
  % cost
  J = 1 / m * sum(-y' * log(h) - (1 - y)' * log(1 - h)) + reg   % scalar
  
  % gradient
  %-------------28x1-----------   ------------------28x1------------
  % added 0 to make the 27x1 matrix to 28x1 so that we can add both the terms
  grad = (1 / m) * X' * (h - y) + [0; lambda/m * theta(2:end, :)];  % 28 x 1

  %ref https://www.youtube.com/watch?v=GMmUg5OCZk4
  
% =============================================================

end
