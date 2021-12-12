function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

  for iter = 1:num_iters

      % Instructions: Perform a single gradient step on the parameter vector
      %               theta. 
      %
      % Hint: While debugging, it can be useful to print out the values
      %       of the cost function (computeCost) and gradient here.
      %

      t1 = sum((theta(1) + theta(2) .* X(:,2)) - y(:)); % Un-Vectorized
      t2 = sum(((theta(1) + theta(2) .* X(:,2)) - y(:)) .* X(:,2)); % Un-Vectorized
      
      theta(1) = theta(1) - (alpha/m) * (t1);
      theta(2) = theta(2) - (alpha/m) * (t2);

      % ============================================================
      % Save the cost J in every iteration    
      J_history(iter) = computeCost(X, y, theta);

  end

  %% Plot J
  %% plot(1:length(J_hist), J_hist)
  
end

%!test
%! [theta J_hist] = gradientDescent([1 5; 1 2; 1 4; 1 5],[1 6 4 2]',[0 0]',0.01,1000);
%! assert(theta, [
%!    5.2148
%!   -0.5733
%!   ], 0.0001)
%! assert(J_hist(1), 5.9794, 0.0001)
%! assert(J_hist(1000), 0.85426, 0.00001)

%!test
%! [theta J_hist] = gradientDescent([1 5; 1 2],[1 6]',[.5 .5]',0.1,10);
%! assert(theta,[ 
%! 1.70986
%! 0.19229
%! ], 0.00001)
%! assert(J_hist, [
%!   5.8853
%!   5.7139
%!   5.5475
%!   5.3861
%!   5.2294
%!   5.0773
%!   4.9295
%!   4.7861
%!   4.6469
%!   4.5117
%!  ], 0.0001)
