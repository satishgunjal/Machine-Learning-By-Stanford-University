function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
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
%
% Hint: The computation of the cost function and gradients can be
%       efficiently vectorized. For example, consider the computation
%
%           sigmoid(X * theta)
%
%       Each row of the resulting matrix will contain the value of the
%       prediction for that example. You can make use of this to vectorize
%       the cost function and gradient computations. 
%
% Hint: When computing the gradient of the regularized cost function, 
%       there're many possible vectorized solutions, but one solution
%       looks like:
%           grad = (unregularized gradient for logistic regression)
%           temp = theta; 
%           temp(1) = 0;   % because we don't add anything for j = 0  
%           grad = grad + YOUR_CODE_HERE (using the temp variable)
%

%DIMENSIONS: 
% where m= number of training examples (here 5000)
%       n = number of features (400)
%   theta = (n+1) x 1  > here 4 x 1
%   X     = m x (n+1)  > here 5 x 4
%   y     = m x 1      > here 5 x 1
%   grad  = (n+1) x 1  > here 4 x 1
%   J     = Scalar   

% h = g(X * theta)
  z = X * theta;  % (5 x 4)*(4 x 1) = (5 x 1)
  h = sigmoid(z); % computes the sigmoid of z. % m x 1 here 5 X 1
  
  % Note that you should not be regularizing '0' which is used for the bias term.
  reg = lambda/(2 * m) * (theta(2:end, :)' * theta(2:end, :)); 
  
  J = 1 / m * sum(-y' * log(h) - (1 - y)' * log(1 - h)) + reg;  % scalar

  % gradient
  % added 0 to make the 3x1 matrix to 4x1 so that we can add both the terms
  %-------------4x1-----------   ------------------4x1------------  
  grad = (1 / m) * X' * (h - y) + [0; lambda/m * theta(2:end, :)]; %(4 x 1)
    
  %In Octave/MATLAB, you can index into the matrices to access and update only certain elements. 
  %For example, A(:, 3:5)= B(:, 1:3) will replaces the columns 3 to 5 of A with the columns 1 to 3 from B.
  %One special keyword you can use in indexing is the 'end' keyword in indexing. 
  %This allows us to select columns (or rows) until the end of the matrix. 
  %For example, A(:, 2:end) will only return elements from the 2nd to last column of A
  
% =============================================================

grad = grad(:);

end
