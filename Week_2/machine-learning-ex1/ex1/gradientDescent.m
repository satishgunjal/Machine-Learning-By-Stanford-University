function [theta, J_history, theta_0_rows, theta_1_rows] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

% Satish - start
theta_0_rows = zeros(num_iters, 1); % storing values of theta 0 in row vector
theta_1_rows = zeros(num_iters, 1); % storing values of theta 1 in row vector
% Satish - end

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    predictions = X * theta;      
    % here is size of X is m by(n+1) i.e. 97 by 2 
    % and size of theta is no of parameters by 1 i.e. 2 by 1
    % so the size of predictions will be  97 by 1 i.e. m by 1
    sqrErrors = predictions - y; % sqrErrors is m by 1 vector
    
    % Now to Perform a single gradient step on the parameter vector theta
    % we will use batch gardient discent algorithm    
    % Please refer  'Gradient Descent for Multiple Variables' from week 2 for gardient discent algorithm defination
    % Vector representation of gardient discent algorithm is as below
    sum_delta = (alpha / m) .* (X' * sqrErrors);
    theta = theta - sum_delta;
    % since we are not saving theta for every iteration, this function will return the final
    % theta value which is "number of parameters*1" i.e. 2*1    
    
    % Satish - start
    theta_0_rows(iter) = theta(1); % adding new theta 0 values to row vector
    theta_1_rows(iter) = theta(2); % adding new theta 1 values to row vector
    % Satish - end
       
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);   
       
end
end
