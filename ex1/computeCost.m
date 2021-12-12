function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

m = length(y);
J = (1/(2*m)) * sum( ((theta(1) + theta(2) .* X(:,2)) - y(:)) .^ 2); % Un-Vectorized

% =========================================================================

end


%!test
%! J = computeCost( [1 2; 1 3; 1 4; 1 5], [7;6;5;4], [0.1;0.2] );
%! assert(J, 11.9450, 0.0001);