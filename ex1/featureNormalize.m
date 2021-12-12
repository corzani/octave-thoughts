function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

  mu = mean(X);
  sigma = std(X);

  t = ones(length(X), 1);
  X_norm = (X - (t * mu)) ./ (t * sigma); % Vectorized

% ============================================================

end

% ---------------

%!test
%! [Xn mu sigma] = featureNormalize([1 ; 2 ; 3]);
%! assert(Xn, [-1; 0; 1]);
%! assert(mu, 2);
%! assert(sigma, 1);

%----------------

%!test
%! [Xn mu sigma] = featureNormalize(magic(3));
%!
%! assert(Xn, [
%!   1.13389  -1.00000   0.37796
%!  -0.75593   0.00000   0.75593
%!  -0.37796   1.00000  -1.13389
%! ], 0.00001);
%! assert(mu, [5 5 5]);
%! assert(sigma, [ 2.6458   4.0000   2.6458], 0.0001);

%--------------

%!test
%! [Xn mu sigma] = featureNormalize([-ones(1,3); magic(3)]);
%! assert(Xn, [
%!  -1.21725  -1.01472  -1.21725
%!   1.21725  -0.56373   0.67625
%!  -0.13525   0.33824   0.94675
%!   0.13525   1.24022  -0.40575
%! ], 0.00001);
%! assert(mu, [3.5000   3.5000   3.5000]);
%! assert(sigma, [ 3.6968   4.4347   3.6968], 0.0001);
