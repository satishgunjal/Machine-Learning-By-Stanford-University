function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

C_steps = [0.01, 0.03, 0.1, 0.3,  1, 3, 10, 30];
sigma_steps = C_steps;

m = length(C_steps);

% the error is defined as the fraction of the cross validation examples
% that were classified incorrectly. Initialise it to 1.
initial_error = 1;

for i=1:m
    for j=1:m
        fprintf('\nC: %f', C_steps(i));
        fprintf(' , sigma: %f\n', sigma_steps(j));
        model = svmTrain(X, y, C_steps(i), @(x1, x2) gaussianKernel(x1, x2, sigma_steps(j)));
        predictions = svmPredict(model, Xval);
        
        error = mean(double(predictions ~= yval));
        
        if error < initial_error
            initial_error = error;
            C = C_steps(i);
            sigma = sigma_steps(j);
        end
    end
end
% =========================================================================

end
