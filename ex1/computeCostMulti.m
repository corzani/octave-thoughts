function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Vectorized solution
m = length(y); % number of training examples
J = (1/(2*m)) * (X * theta - y)' * (X * theta - y);

% =========================================================================

end

%!test
%! X = [ 2 1 3; 7 1 9; 1 8 1; 3 7 4 ];
%! y = [2 ; 5 ; 5 ; 6];
%! theta_test = [0.4 ; 0.6 ; 0.8];
%! J = computeCostMulti( X, y, theta_test );
%! assert (J, 5.2950, 0.0001);
