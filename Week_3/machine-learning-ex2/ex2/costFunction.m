function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

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
%
% Note: grad should have the same dimensions as theta
%

%DIMENSIONS: 
% where m= number of training examples (here 100)
%       n = number of features (2)
%       > +1 for column of '1' in matrix X
%   theta = (n+1) x 1  > here 3 x 1
%   X     = m x (n+1)  > here 100 x 3
%   y     = m x 1      > here 100 x 1
%   grad  = (n+1) x 1  > here 3 x 1
%   J     = Scalar     
  
% h = g(X * theta)
  z = X * theta;  % m x 1 here 100 X 1
  h = sigmoid(z); % computes the sigmoid of z. % m x 1 here 100 X 1
  
  J = 1 / m * sum(-y' * log(h) - (1 - y)' * log(1 - h));  % scalar

  grad = (1 / m) * X' * (h - y);  % (n + 1) x 1 here 3 x 1
       
  %end

% =============================================================

end
