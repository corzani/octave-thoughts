function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

% Using ./ operator you can use matrix/vectors instead of a single scalar

g = 1 ./ (1+ exp(-z));

% =============================================================

end

%!test
%!assert(sigmoid(-5), 0.0066929, 0.0000001)
%!assert(sigmoid(0), 0.5, 0.01)
%!assert(sigmoid(5), 0.99331, 0.00001)
%!assert(sigmoid([4 5 6]), [0.98201   0.99331   0.99753], 0.00001)
%!assert(sigmoid([-1;0;1]), [0.26894; 0.50000; 0.73106], 0.00001)
