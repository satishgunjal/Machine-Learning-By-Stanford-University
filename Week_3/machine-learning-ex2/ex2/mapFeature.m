function out = mapFeature(X1, X2)
% MAPFEATURE Feature mapping function to polynomial features
%
%   MAPFEATURE(X1, X2) maps the two input features
%   to quadratic features used in the regularization exercise.
%
%   Returns a new feature array with more features, comprising of 
%   X1, X2, X1.^2, X2.^2, X1*X2, X1*X2.^2, etc..
%
%   Inputs X1, X2 must be the same size
%

degree = 6;
out = ones(size(X1(:,1)));
for i = 1:degree
    for j = 0:i
        out(:, end+1) = (X1.^(i-j)).*(X2.^j);
    end
end

end

%{ 
Note: In Week 6 intuition behind the feature mapping upto 6th power is explained

Explaination by Tom Mosher>>
The mapFeature() function takes the two original features, and creates all of the quadratic combinations of 
them where the sum of the exponents is six or less.
So the X matrix is expanded from size (m x 2) to (m x 28).
So you get all of the combinations, rather like this 
(relabeling the original features to be 'u' and 'v' to minimize the complexity of the notation)
u^0v^0 through u^0v^6
u^1v^0 through u^1v^5
u^2v^0 through u^2v^4
continuing through...
u^5v^0 through u^5v^1
...and ending with
u^6v^0

if you continue this sequence for all exponents that sum to 6 or less, you get a total of 28 features.
------------------------------------------------------------------------------------------------------------
Explaination by Kondal Munagala>>

May be a repetition of what Andrew said, but feature mapping is actually required because it is not always that y is linearly dependent on features x. It could be a function of quadratic / polynomial features like x^2, x^3 or x^6 etc. This is the reason, we need to feed the machine learning algorithms with such features and feature mapping helps us with that.

In one of the videos in week 2 Andrew talks about how we can utilise the same regression models that we used for linear regression and extend them to use polynomial / quadratic features but just passing x^2, X^3... and the likes as features to the algorithm. Feature mapping is just an implementation of that
%}