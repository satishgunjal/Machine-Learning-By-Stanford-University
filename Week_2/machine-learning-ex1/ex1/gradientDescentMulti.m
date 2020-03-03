function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

    predictions = X * theta;      
    % here is size of X is m by(n+1) i.e. 47 by 3 
    % and size of theta is no of parameters by 1 i.e. 3 by 1
    % so the size of predictions will be  47 by 1 i.e. m by 1
    sqrErrors = predictions - y; % sqrErrors is m by 1 vector
    
    % Now to Perform a single gradient step on the parameter vector theta
    % we will use batch gardient discent algorithm    
    % Please refer  'Gradient Descent for Multiple Variables' from week 2 for gardient discent algorithm defination
    % Vector representation of gardient discent algorithm is as below
    sum_delta = (alpha / m) .* (X' * sqrErrors);
    theta = theta - sum_delta;  
    % since we are not saving theta for every iteration, this function will return the final
    % theta value which is "number of parameters*1" i.e. 3*1

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
