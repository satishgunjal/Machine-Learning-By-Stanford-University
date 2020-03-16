function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

%% My code: 
% I am looping through each value of y vector and X matrix. Depending on y value, updating the marker and
% ploting each value individually and then holding the graph till last value in loop.
% Code works but its very slow as comapare to below vector implementation.          
%{
for i=1:length(y)
    if (y(i) == 1) % 
        marker = 'k+';
    else
        marker = 'ro';
    end
    plot(X(i), X(i, 2), marker,'LineWidth', 2, 'MarkerSize', 7);
    hold on
end
%}

%% Given code: Vector implementation
% Find Indices of Positive and Negative Examples
pos = find(y == 1); % returns all the indexes where y == 1
neg = find(y == 0); % returns all the indexes where y == 0
% Plot Examples
plot(X(pos, 1), X(pos, 2), 'k+','LineWidth', 2, 'MarkerSize', 7); % plots positive values
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7); % plot negative values
% X(pos, 1) returns value from cloumn one (x1) for each index of 'pos'
% X(pos, 2) returns value from cloumn two (x2) for each index of 'pos'

% =========================================================================

hold off;

end
